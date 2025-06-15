<?php
// *	@source		See SOURCE.txt for source and other copyright.
// *	@license	GNU General Public License version 3; see LICENSE.txt

class ControllerCommonHeader extends Controller {
	public function index() {
		// Analytics
		$this->load->model('setting/extension');

		$data['analytics'] = array();

		$analytics = $this->model_setting_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get('analytics_' . $analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get('analytics_' . $analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['robots'] = $this->document->getRobots();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts('header');
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');
		
		$host = isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1')) ? HTTPS_SERVER : HTTP_SERVER;
		if ($this->request->server['REQUEST_URI'] == '/') {
			$data['og_url'] = $this->url->link('common/home');
		} else {
			$data['og_url'] = $host . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		}
		
		$data['og_image'] = $this->document->getOgImage();
		


		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));
		
		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');

		$data['email'] = $this->config->get('config_email');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['formated_telephone'] = formatPhoneNumber($this->config->get('config_telephone'));

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		if ($this->config->get('configblog_blog_menu')) {
			$data['blog_menu'] = $this->load->controller('blog/menu');
		} else {
			$data['blog_menu'] = '';
		}
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');
		$data['menu'] = $this->load->controller('common/menu');

		$data['categories'] = $this->getCategories();
		$data['categories_json'] = json_encode($data['categories'], JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT);
		$data['navbar'] = $this->getNavigationLinks();
		
		return $this->load->view('common/header', $data);
	}

	public function getCategories($args = []){

		$this->load->model('catalog/category');
		if(is_array($args) and isset($args['depth'])){
			$depth = (int)$args['depth'];
		}else {
			$depth = 1;
		}

		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);
		foreach ($categories as $category) {
			if ($category['top']) {
				$children_data = array();
				$paths = ['0', $category['category_id']];
				if((int)$depth > 0) {
					$children_data = $this->getChildCategories($category['category_id'], $paths , (int) $depth - 1);
				}

				$path = implode('_', $paths);

				$data['categories'][] = array(
					'id' 			=> (int)$category['category_id'],
					'product_count' => null,
					'name'     		=> $category['name'],
					'children' 		=> $children_data,
					'has_childs' 	=> !empty($children_data),
					'column'   		=> $category['column'] ? $category['column'] : 1,
					'href'     		=> $this->url->link('product/category', 'path=' . $path)
				);
			}
		}

		return $data['categories'];
	}

	public function getChildCategories($category_id, $paths, $depth = 0){

		$children_data = array();

		$children = $this->model_catalog_category->getCategories($category_id);

		foreach ($children as $child) {
			$filter_data = array(
				'filter_category_id'  => $child['category_id'],
				'filter_sub_category' => true
			);

			$childs_categories = [];	

			if((int)$depth > 0) {
				$childs_categories = $this->getChildCategories($child['category_id'], [...$paths, $child['category_id']] , $depth - 1);
			}

			$_path = implode('_', [...$paths, $child['category_id']]);

			$children_data[] = array(
				'id' 		=> (int)$child['category_id'],
				'product_count' => $this->config->get('config_product_count') ? (int)$this->model_catalog_product->getTotalProducts($filter_data) : null,
				'name'  => $child['name'],
				'href'  => $this->url->link('product/category', 'path=' . $_path),
				'children' => $childs_categories,
				'has_childs' => !empty($childs_categories),
			);
		}

		return $children_data;
	}

	public function getNavigationLinks(){
		$data = [['name' => $this->language->get('text_special'),'href' => $this->url->link('product/special'),],];

		if ($this->config->get('configblog_blog_menu')) {
			$data[] = ['name' => $this->language->get('text_blog'),'href' => $this->url->link('blog/latest'),];
		}

		foreach ($this->model_catalog_information->getInformations() as $result) {
			$data[] = array('name' => $result['title'],'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id']));
		}

		$data[] = ['name' => $this->language->get('text_contact'),'href' => $this->url->link('information/contact'),];

		return $data;
	}
}

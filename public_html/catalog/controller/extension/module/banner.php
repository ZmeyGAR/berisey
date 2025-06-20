<?php
class ControllerExtensionModuleBanner extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		// $this->document->addStyle('catalog/view/javascript/jquery/swiper/css/swiper.min.css');
		// $this->document->addStyle('catalog/view/javascript/jquery/swiper/css/opencart.css');
		// $this->document->addScript('catalog/view/javascript/jquery/swiper/js/swiper.jquery.js');
		
		$this->document->addScript('catalog/view/theme/berisey/javascript/swiper.min.js');
		$this->document->addStyle('catalog/view/theme/berisey/stylesheet/swiper-bundle-11.2.1.min.css');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'content' => html_entity_decode($result['content'], ENT_QUOTES, 'UTF-8'),
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}

		$data['module'] = $module++;

		return $this->load->view('extension/module/banner', $data);
	}
}
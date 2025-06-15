<?php
/**
 * @package		OpenCart
 * @author		Daniel Kerr
 * @copyright	Copyright (c) 2005 - 2017, OpenCart, Ltd. (https://www.opencart.com/)
 * @license		https://opensource.org/licenses/GPL-3.0
 * @link		https://www.opencart.com
*/

/**
* Pagination class
*/
class TailwindPagination {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 8;
	public $url = '';
	public $text_first = '<span class="sr-only">Previous</span><svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/></svg>';
	public $text_last = '<span class="sr-only">Next</span><svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/></svg>';
	public $text_next = '<span class="sr-only">Next</span><svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/></svg>';
	public $text_prev = '<span class="sr-only">Previous</span><svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/></svg>';

	/**
     * 
     *
     * @return	text
     */
	public function render() {
		$total = $this->total;

		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}

		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}

		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);

		$this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

		$output = '<ul class="flex items-center -space-x-px h-10 text-base">';

		if ($page > 1) {
			$output .= '<li><a href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '" class="flex items-center justify-center px-4 h-10 ms-0 leading-tight text-lightBlack bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-textGray></li>';

			
			if ($page - 1 === 1) {
				$output .= '<li><a href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '" class="flex items-center justify-center px-4 h-10 leading-tight text-lightBlack bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-textGray">' . $this->text_prev . '</a></li>';
			} else {
				$output .= '<li><a href="' . str_replace('{page}', $page - 1, $this->url) . '" class="flex items-center justify-center px-4 h-10 leading-tight text-lightBlack bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-textGray">' . $this->text_prev . '</a></li>';
			}
		}

		if ($num_pages > 1) {
			if ($num_pages <= $num_links) {
				$start = 1;
				$end = $num_pages;
			} else {
				$start = $page - floor($num_links / 2);
				$end = $page + floor($num_links / 2);

				if ($start < 1) {
					$end += abs($start) + 1;
					$start = 1;
				}

				if ($end > $num_pages) {
					$start -= ($end - $num_pages);
					$end = $num_pages;
				}
			}

			for ($i = $start; $i <= $end; $i++) {
				if ($page == $i) {
					$output .= '<li class="active"><a aria-current="page" class="z-10 flex items-center justify-center px-4 h-10 leading-tight text-lightBlack border border-lightGreen bg-lightBlue">' . $i . '</a></li>';
				} else {
					if ($i === 1) {
						$output .= '<li><a href="' . str_replace(array('&amp;page={page}', '?page={page}', '&page={page}'), '', $this->url) . '" class="flex items-center justify-center px-4 h-10 leading-tight text-lightGray bg-white border border-gray-300 hover:bg-gray-100">' . $i . '</a></li>';
					} else {
						$output .= '<li><a href="' . str_replace('{page}', $i, $this->url) . '" class="flex items-center justify-center px-4 h-10 leading-tight text-lightGray bg-white border border-gray-300 hover:bg-gray-100">' . $i . '</a></li>';
					}
				}
			}
		}

		if ($page < $num_pages) {
			$output .= '<li><a href="' . str_replace('{page}', $num_pages, $this->url) . '" class="flex items-center justify-center px-4 h-10 leading-tight text-lightGray bg-white border border-gray-300 rounded-e-lg hover:bg-gray-100">' . $this->text_last . '</a></li>';
		}

		$output .= '</ul>';

		if ($num_pages > 1) {
			return $output;
		} else {
			return '';
		}
	}
}

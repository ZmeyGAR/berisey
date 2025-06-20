<?php
namespace Template;


                use debugBar\Builder\DebugBarBuilder;
		    
final class Template {
	private $data = array();
		
	public function set($key, $value) {
		$this->data[$key] = $value;
	}
	
	public function render($template) {
		$file = DIR_TEMPLATE . $template . '.tpl';

			  DebugBarBuilder::getInstance()->addAction($file);
		    

		if (is_file($file)) {
			extract($this->data);

			ob_start();

			require(modification($file));

			return ob_get_clean();
		}

		throw new \Exception('Error: Could not load template ' . $file . '!');
		exit();
	}	
}

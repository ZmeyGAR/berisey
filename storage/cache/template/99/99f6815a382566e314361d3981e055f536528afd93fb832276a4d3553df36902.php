<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* berisey/template/common/search.twig */
class __TwigTemplate_22b31a00b50d3c5c6e47e9dbb4c577b837c6c2e63e7e8a8cf9c920e7c7dc01ec extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<div id=\"search\" class=\"relative w-full flex-1\">
  <button type=\"button\" class=\"absolute inset-y-0 right-0 flex items-center pe-3 cursor-pointer\">
    <svg class=\"w-4 h-4 md:w-6 md:h-6\" viewBox=\"0 0 25 26\" fill=\"none\"
      xmlns=\"http://www.w3.org/2000/svg\">
      <path d=\"M19.6755 17.8723C20.7457 18.8472 21.7262 19.913 22.794 20.8908C23.4183 21.4631 24.0233 22.0592 24.5983 22.6798C25.1046 23.2258 25.1269 24.6244 24.6957 25.2491C24.6059 25.379 24.4633 25.4251 24.3383 25.4915C23.3573 26.0119 22.5371 25.9647 21.7227 25.1634C19.7588 23.2305 17.8056 21.2859 15.8594 19.3355C15.6622 19.138 15.5384 19.1613 15.3249 19.2971C14.6489 19.7271 13.9273 20.0622 13.1645 20.3267C12.7356 20.4753 12.2996 20.5616 11.8666 20.6775C10.9607 20.9194 10.0354 20.8885 9.12891 20.8197C7.20207 20.6741 5.47647 19.9381 3.93628 18.7895C2.7986 17.9416 1.92788 16.8595 1.2232 15.6352C0.649961 14.6393 0.294985 13.5641 0.107228 12.4476C-0.04415 11.545 -0.0177467 10.6225 0.0784783 9.70468C0.183504 8.70063 0.464552 7.75194 0.886417 6.8388C1.50425 5.50142 2.36089 4.34528 3.48449 3.38027C4.77649 2.27192 6.25859 1.54233 7.91847 1.18162C8.75516 0.999809 9.61004 0.919392 10.469 0.974751C10.939 1.00505 11.4072 1.07498 11.876 1.12684C11.896 1.12859 11.9159 1.13092 11.9359 1.13267C12.3689 1.25446 12.8078 1.35702 13.2331 1.50096C14.5838 1.95899 15.7954 2.65128 16.8252 3.64425C17.788 4.57313 18.5795 5.62496 19.1404 6.83647C19.4796 7.56954 19.716 8.3405 19.8504 9.1371C19.9624 9.80083 20.0475 10.4756 20.0147 11.1446C19.9677 12.091 19.8463 13.0274 19.5283 13.9406C19.2243 14.8135 18.8553 15.641 18.3208 16.3939C18.2492 16.4947 18.3055 16.532 18.3583 16.5838C18.6986 16.9178 19.0407 17.2493 19.3822 17.5821C19.4637 17.6951 19.5611 17.7924 19.6755 17.8723ZM10.2214 18.3449C11.0546 18.3705 11.9488 18.2009 12.8136 17.8606C13.2009 17.7085 13.5811 17.5395 13.9267 17.3128C14.6971 16.807 15.3577 16.1713 15.9744 15.4936C16.5341 14.8788 16.9742 14.1882 17.2165 13.3864C17.541 12.3124 17.724 11.2338 17.5815 10.0957C17.4518 9.05726 17.1713 8.07827 16.6403 7.19019C15.3407 5.01834 13.4039 3.77304 10.8762 3.484C9.38591 3.31384 7.966 3.60754 6.63821 4.30799C5.49055 4.91403 4.56409 5.75666 3.85003 6.83996C2.68536 8.60564 2.36617 10.5421 2.81209 12.5665C3.14418 14.0752 3.92983 15.384 5.11562 16.4195C6.54609 17.6695 8.19835 18.3623 10.222 18.3443L10.2214 18.3449Z\" fill=\"url(#current_linear_gradient)\" />
    </svg>
    <span class=\"sr-only\">";
        // line 7
        echo ($context["text_search"] ?? null);
        echo "</span>
  </button>

  <input type=\"text\" id=\"search-navbar\" name=\"search\" value=\"";
        // line 10
        echo ($context["search"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["text_search"] ?? null);
        echo "\" autocomplete=\"all-off\"
    class=\"block w-full rounded-xl border border-lightGreen text-sm text-lightBlack md:h-14 placeholder-lightBlack focus:outline-none focus:shadow-none\">
</div>";
    }

    public function getTemplateName()
    {
        return "berisey/template/common/search.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 10,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/common/search.twig", "");
    }
}

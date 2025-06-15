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

/* berisey/template/extension/module/custom/cart.twig */
class __TwigTemplate_9651b776b374f5fcb32d8f5f46f792e9e21968dab5f174b0e2ad9fb2943e1188 extends \Twig\Template
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
        if (($context["products"] ?? null)) {
            echo " 
<form action=\"";
            // line 2
            echo ($context["action"] ?? null);
            echo "\" method=\"post\" enctype=\"multipart/form-data\">
  <ul role=\"list\" class=\"divide-y divide-lightGray\">
    ";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                echo " 
      <li class=\"relative flex\">
        <div class=\"flex w-full gap-3 p-3 border border-lightGray/10 rounded-md shadow-sm\">
          <div class=\"flex flex-col gap-3\">

            <div class=\"relative\">
              <div class=\"size-32 shrink-0 overflow-hidden rounded-md border border-lightGray/10 relative\">
                <img src=\"";
                // line 11
                echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 11);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 11);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 11);
                echo "\" class=\"size-full object-cover\">
              </div>

              ";
                // line 14
                if ( !(($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = $context["product"]) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["stock"] ?? null) : null)) {
                    echo " 
                <div class=\"absolute top-0 left-0 right-0 bottom-0 size-32\">
                  <div data-tooltip-target=\"instock-tooltip-";
                    // line 16
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 16);
                    echo "\" class=\" bg-red-50 rounded-full group flex items-center justify-center focus-within:outline-red-500 p-1.5 size-12 animate-bounce border border-lightGray/10 shadow-sm\">
                    <svg class=\"w-12 h-12 p-1\" viewBox=\"0 0 20 20\" fill=\"none\"
                      xmlns=\"http://www.w3.org/2000/svg\">
                      <path class=\"stroke-red-500\"s
                        d=\"M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM10 15a1 1 0 1 1 0-2 1 1 0 0 1 0 2Zm1-4a1 1 0 0 1-2 0V6a1 1 0 0 1 2 0v5Z\"
                        stroke=\"#EF4444\" stroke-width=\"1.6\" stroke-linecap=\"round\" />
                    </svg>
                  </div>
                  <div id=\"instock-tooltip-";
                    // line 24
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 24);
                    echo "\" role=\"tooltip\" class=\"absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white transition-opacity duration-300 bg-gray-900 rounded-lg shadow-xs opacity-0 tooltip min-w-72\">
                      ";
                    // line 25
                    echo ($context["error_stock"] ?? null);
                    echo "<div class=\"tooltip-arrow\" data-popper-arrow></div>
                  </div>
                </div>
              ";
                }
                // line 29
                echo "            </div>

            <div class=\"flex flex-col gap-3 md:hidden\">
              <p class=\"flex flex-col items-center\">
                <span class=\"text-xs font-medium text-lightGray\">";
                // line 33
                echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 33);
                echo "</span>
                <span class=\"font-bold text-darkGreen\">";
                // line 34
                echo twig_get_attribute($this->env, $this->source, $context["product"], "total", [], "any", false, false, false, 34);
                echo "</span>
              </p>

              <div class=\"flex justify-between items-center\">
                <div class=\"flex items-center\">
                  <button
                    type=\"button\"
                    onclick=\"custom_cart.update(";
                // line 41
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 41);
                echo ", ";
                echo (twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 41) - 1);
                echo ")\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 41) == 1)) {
                    echo " disabled ";
                }
                // line 42
                echo "                    class=\"group size-8 rounded-[50px] border border-gray-200 shadow-sm shadow-transparent p-2.5 flex items-center justify-center bg-white transition-all duration-500 hover:shadow-gray-200 hover:bg-gray-50 hover:border-gray-300 focus-within:outline-gray-300\">
                    <svg class=\"stroke-gray-900 transition-all duration-500 group-hover:stroke-black\"
                      width=\"18\" height=\"19\" viewBox=\"0 0 18 19\" fill=\"none\"
                      xmlns=\"http://www.w3.org/2000/svg\">
                      <path d=\"M4.5 9.5H13.5\" stroke=\"\" stroke-width=\"1.6\" stroke-linecap=\"round\"
                        stroke-linejoin=\"round\" />
                    </svg>
                  </button>
                  <input type=\"text\"
                    oninput=\"custom_cart.change(";
                // line 51
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 51);
                echo ", event)\" name=\"quantity[";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 51);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 51);
                echo "\"
                    class=\"border border-gray-200 rounded-full w-20 h-8 aspect-video outline-none text-gray-900 font-semibold text-sm py-1.5 px-3 bg-gray-100 text-center -mx-2 z-10\"
                    placeholder=\"2\">
                  <button
                    type=\"button\"
                    onclick=\"custom_cart.update(";
                // line 56
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 56);
                echo ", ";
                echo (twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 56) + 1);
                echo ")\"
                    class=\"group size-8 rounded-[50px] border border-gray-200 shadow-sm shadow-transparent p-2.5 flex items-center justify-center bg-white transition-all duration-500 hover:shadow-gray-200 hover:bg-gray-50 hover:border-gray-300 focus-within:outline-gray-300\">
                    <svg class=\"stroke-gray-900 transition-all duration-500 group-hover:stroke-black\"
                      width=\"18\" height=\"19\" viewBox=\"0 0 18 19\" fill=\"none\"
                      xmlns=\"http://www.w3.org/2000/svg\">
                      <path d=\"M3.75 9.5H14.25M9 14.75V4.25\" stroke=\"\" stroke-width=\"1.6\"
                        stroke-linecap=\"round\" stroke-linejoin=\"round\" />
                    </svg>
                  </button>
                </div>
              </div>

              <button type=\"button\" class=\"font-medium text-xs text-center text-red-600 hover:text-red-900 flex flex-nowrap items-center justify-center\" onclick=\"custom_cart.remove('";
                // line 68
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 68);
                echo "');\" title=\"";
                echo ($context["button_remove"] ?? null);
                echo "\">
                ";
                // line 69
                echo ($context["button_remove"] ?? null);
                echo "
                <svg width=\"34\" height=\"34\" viewBox=\"0 0 34 34\" fill=\"none\"
                  xmlns=\"http://www.w3.org/2000/svg\">
                  <path class=\"stroke-red-500 transition-all duration-500\"
                    d=\"M14.1673 13.5997V12.5923C14.1673 11.8968 14.7311 11.333 15.4266 11.333H18.5747C19.2702 11.333 19.834 11.8968 19.834 12.5923V13.5997M19.834 13.5997C19.834 13.5997 14.6534 13.5997 11.334 13.5997C6.90804 13.5998 27.0933 13.5998 22.6673 13.5997C21.5608 13.5997 19.834 13.5997 19.834 13.5997ZM12.4673 13.5997H21.534V18.8886C21.534 20.6695 21.534 21.5599 20.9807 22.1131C20.4275 22.6664 19.5371 22.6664 17.7562 22.6664H16.2451C14.4642 22.6664 13.5738 22.6664 13.0206 22.1131C12.4673 21.5599 12.4673 20.6695 12.4673 18.8886V13.5997Z\"
                    stroke=\"#EF4444\" stroke-width=\"1.6\" stroke-linecap=\"round\" />
                </svg>
              </button>
            </div>
          </div>
          <div class=\"flex flex-1\">

            <div class=\"flex flex-col flex-1 gap-3\">
              <div class=\"flex justify-between text-base font-semibold text-darkGreen\">
                ";
                // line 83
                if ( !(($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["product"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["stock"] ?? null) : null)) {
                    echo " 
                  <div class=\"flex flex-col gap-2\">
                    <span class=\"text-xs font-bold text-lightBlack\">";
                    // line 85
                    echo ($context["error_stock"] ?? null);
                    echo "</span>
                    <h3><a href=\"";
                    // line 86
                    echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["product"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["href"] ?? null) : null);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 86);
                    echo "</a></h3>
                  </div>
                ";
                } else {
                    // line 89
                    echo "                  <h3><a href=\"";
                    echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["product"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["href"] ?? null) : null);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 89);
                    echo "</a></h3>
                ";
                }
                // line 91
                echo "              </div>
              <p class=\"text-sm text-lightGray\">#";
                // line 92
                echo twig_get_attribute($this->env, $this->source, $context["product"], "model", [], "any", false, false, false, 92);
                echo "</p>
              <div class=\"flex flex-col gap-3\">
                <ul class=\"flex flex-wrap *:rounded-full *:border *:border-lightGreen *:bg-lightGreen/10 *:px-2 *:py-0.5  *:w-max *:max-w-max *:max-h-max gap-1 *:text-xs\">
                  ";
                // line 95
                if (twig_get_attribute($this->env, $this->source, $context["product"], "sku", [], "any", false, false, false, 95)) {
                    // line 96
                    echo "                    <li><small>";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "sku", [], "any", false, false, false, 96);
                    echo "</small></li>
                  ";
                }
                // line 97
                echo " 
                  ";
                // line 98
                if (((twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 98) || twig_get_attribute($this->env, $this->source, $context["product"], "reward", [], "any", false, false, false, 98)) || twig_get_attribute($this->env, $this->source, $context["product"], "recurring", [], "any", false, false, false, 98))) {
                    echo " 
                    ";
                    // line 99
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 99));
                    foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                        echo " 
                      <li><small>";
                        // line 100
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 100);
                        echo ": ";
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 100);
                        echo "</small></li>
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 101
                    echo " 
                  ";
                }
                // line 103
                echo "                </ul>

                ";
                // line 105
                if (twig_get_attribute($this->env, $this->source, $context["product"], "recurring", [], "any", false, false, false, 105)) {
                    // line 106
                    echo "                  <div class=\"flex flex-col w-full max-w-[320px] leading-1.5 p-2 border border-lightGreen bg-lightGreen/10 rounded-e-xl rounded-es-xl\">
                    <span class=\"label label-info\">";
                    // line 107
                    echo ($context["text_recurring_item"] ?? null);
                    echo "</span> <small>";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "recurring", [], "any", false, false, false, 107);
                    echo "</small>
                  </div>
                ";
                }
                // line 110
                echo "              </div>
            </div>

            <div class=\"hidden gap-3 md:flex *:min-w-32 flex-col xl:flex-row-reverse\">

              <p class=\"flex flex-col items-end\">
                ";
                // line 116
                if (twig_get_attribute($this->env, $this->source, $context["product"], "reward", [], "any", false, false, false, 116)) {
                    echo " 
                  <span class=\"text-xs font-medium text-lightGray\">";
                    // line 117
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "reward", [], "any", false, false, false, 117);
                    echo "</span>
                ";
                }
                // line 118
                echo " 
                <span class=\"text-xs font-medium text-lightGray\">";
                // line 119
                echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 119);
                echo "</span>
                <span class=\"font-bold text-darkGreen\">";
                // line 120
                echo twig_get_attribute($this->env, $this->source, $context["product"], "total", [], "any", false, false, false, 120);
                echo "</span>
              </p>

              <div>
                <div class=\"flex items-center justify-end\">
                  <button
                    type=\"button\"
                    onclick=\"custom_cart.update(";
                // line 127
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 127);
                echo ", ";
                echo (twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 127) - 1);
                echo ")\" ";
                if ((twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 127) == 1)) {
                    echo " disabled ";
                }
                // line 128
                echo "                    class=\"group size-8 rounded-[50px] border border-gray-200 shadow-sm shadow-transparent p-2.5 flex items-center justify-center bg-white transition-all duration-500 hover:shadow-gray-200 hover:bg-gray-50 hover:border-gray-300 focus-within:outline-gray-300\">
                    <svg class=\"stroke-gray-900 transition-all duration-500 group-hover:stroke-black\"
                      width=\"18\" height=\"19\" viewBox=\"0 0 18 19\" fill=\"none\"
                      xmlns=\"http://www.w3.org/2000/svg\">
                      <path d=\"M4.5 9.5H13.5\" stroke=\"\" stroke-width=\"1.6\" stroke-linecap=\"round\"
                        stroke-linejoin=\"round\" />
                    </svg>
                  </button>
                  <input type=\"text\"
                    oninput=\"custom_cart.change(";
                // line 137
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 137);
                echo ", event)\" name=\"quantity[";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 137);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 137);
                echo "\"
                    class=\"border border-gray-200 rounded-full w-20 h-8 aspect-video outline-none text-gray-900 font-semibold text-sm py-1.5 px-3 bg-gray-100 text-center -mx-2 z-10\"
                    placeholder=\"2\">
                  <button
                    type=\"button\"
                    onclick=\"custom_cart.update(";
                // line 142
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 142);
                echo ", ";
                echo (twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 142) + 1);
                echo ")\"
                    class=\"group size-8 rounded-[50px] border border-gray-200 shadow-sm shadow-transparent p-2.5 flex items-center justify-center bg-white transition-all duration-500 hover:shadow-gray-200 hover:bg-gray-50 hover:border-gray-300 focus-within:outline-gray-300\">
                    <svg class=\"stroke-gray-900 transition-all duration-500 group-hover:stroke-black\"
                      width=\"18\" height=\"19\" viewBox=\"0 0 18 19\" fill=\"none\"
                      xmlns=\"http://www.w3.org/2000/svg\">
                      <path d=\"M3.75 9.5H14.25M9 14.75V4.25\" stroke=\"\" stroke-width=\"1.6\"
                        stroke-linecap=\"round\" stroke-linejoin=\"round\" />
                    </svg>
                  </button>
                </div>
              </div>

            </div>

          </div>
        </div>
        <div class=\"hidden md:flex\">

          <button type=\"button\" class=\"font-medium text-xs text-center text-red-600 hover:text-red-900 flex gap-3 flex-nowrap items-center justify-end p-6\" onclick=\"custom_cart.remove('";
                // line 160
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 160);
                echo "');\" title=\"";
                echo ($context["button_remove"] ?? null);
                echo "\">

            <svg width=\"51\" height=\"51\" viewBox=\"0 0 34 34\" fill=\"none\"
              xmlns=\"http://www.w3.org/2000/svg\">
              <circle class=\"fill-red-50 transition-all duration-500 group-hover:fill-red-400\"
                cx=\"17\" cy=\"17\" r=\"17\" fill=\"\" />

              <path class=\"stroke-red-500 transition-all duration-500 group-hover:stroke-white\"
                d=\"M14.1673 13.5997V12.5923C14.1673 11.8968 14.7311 11.333 15.4266 11.333H18.5747C19.2702 11.333 19.834 11.8968 19.834 12.5923V13.5997M19.834 13.5997C19.834 13.5997 14.6534 13.5997 11.334 13.5997C6.90804 13.5998 27.0933 13.5998 22.6673 13.5997C21.5608 13.5997 19.834 13.5997 19.834 13.5997ZM12.4673 13.5997H21.534V18.8886C21.534 20.6695 21.534 21.5599 20.9807 22.1131C20.4275 22.6664 19.5371 22.6664 17.7562 22.6664H16.2451C14.4642 22.6664 13.5738 22.6664 13.0206 22.1131C12.4673 21.5599 12.4673 20.6695 12.4673 18.8886V13.5997Z\"
                stroke=\"#EF4444\" stroke-width=\"1.6\" stroke-linecap=\"round\" />
            </svg>
          </button>
        </div>


      </li>
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 177
            echo "  </ul>
</form>
";
        }
        // line 179
        echo " 
";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/cart.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  390 => 179,  385 => 177,  360 => 160,  337 => 142,  325 => 137,  314 => 128,  306 => 127,  296 => 120,  292 => 119,  289 => 118,  284 => 117,  280 => 116,  272 => 110,  264 => 107,  261 => 106,  259 => 105,  255 => 103,  251 => 101,  241 => 100,  235 => 99,  231 => 98,  228 => 97,  222 => 96,  220 => 95,  214 => 92,  211 => 91,  203 => 89,  195 => 86,  191 => 85,  186 => 83,  169 => 69,  163 => 68,  146 => 56,  134 => 51,  123 => 42,  115 => 41,  105 => 34,  101 => 33,  95 => 29,  88 => 25,  84 => 24,  73 => 16,  68 => 14,  58 => 11,  46 => 4,  41 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/cart.twig", "");
    }
}

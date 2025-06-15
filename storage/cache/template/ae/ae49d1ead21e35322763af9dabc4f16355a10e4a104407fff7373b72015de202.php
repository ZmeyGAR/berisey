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

/* berisey/template/common/cart.twig */
class __TwigTemplate_afd4baf050be5df605696ff2770451b40d968a252b15dcf2bcc23fe414fc6216 extends \Twig\Template
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
        echo "<div id=\"cart\">

  <div>
    <button 
      class=\"btn-cart flex justify-center items-center relative rounded-full bg-gradient-to-br from-lightGreen to-darkGreen max-w-12 max-h-12 p-3\"
      data-drawer-target=\"drawer-cart\" data-drawer-toggle=\"drawer-cart\" data-drawer-placement=\"right\" aria-controls=\"drawer-cart\"
      >
      <span class=\"cart-total absolute -top-3 -left-2 bg-lightBlack text-sm text-white rounded-2xl p-1\">120</span>
      <svg class=\"w-8 h-8 fill-white\" viewBox=\"0 0 32 32\" fill=\"none\"
        xmlns=\"http://www.w3.org/2000/svg\">
        <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"
          d=\"M1.10466 0.0851504C0.765655 0.191872 0.187446 0.789842 0.0834919 1.14126C-0.10784 1.78807 0.0270594 2.30374 0.515197 2.79126C0.959059 3.2345 1.20751 3.30631 2.2981 3.30631H3.16469L3.20565 3.56501C3.22824 3.70733 3.74428 7.8082 4.35254 12.6782C5.2404 19.7868 5.48692 21.5987 5.60262 21.8673C5.78663 22.2946 6.3553 22.8342 6.80338 23.0068C7.13852 23.1359 7.4412 23.1398 17.2332 23.1398H27.3178L27.6408 22.9907C28.1186 22.7701 28.5501 22.3385 28.7504 21.8806C28.8458 21.6625 29.6324 18.6436 30.4983 15.1719C32.2061 8.32483 32.1615 8.56808 31.7907 8.12795C31.4252 7.69416 32.2745 7.72141 19.1349 7.72141C10.3517 7.72141 7.114 7.70072 7.114 7.64463C7.114 7.41574 6.2711 1.42934 6.20203 1.16775C6.09573 0.764938 5.54156 0.198149 5.13741 0.0788727C4.76905 -0.0298492 1.45355 -0.0246752 1.10466 0.0851504ZM9.12484 25.4909C7.3735 25.9613 6.28996 27.7724 6.73624 29.4836C7.19834 31.2555 9.00901 32.3485 10.7374 31.8988C12.0493 31.5576 13.0224 30.4724 13.2152 29.1355C13.5445 26.8523 11.3468 24.894 9.12484 25.4909ZM22.3868 25.4909C20.6355 25.9613 19.5519 27.7724 19.9982 29.4836C20.4603 31.2555 22.271 32.3485 23.9994 31.8988C25.3113 31.5576 26.2844 30.4724 26.4772 29.1355C26.8065 26.8523 24.6088 24.894 22.3868 25.4909Z\" />
      </svg>
    </button>
  </div>


  <!-- drawer cart component -->
  <div id=\"drawer-cart\" class=\"fixed top-0 right-0 bottom-0 z-10 h-screen p-4 overflow-y-auto transition-transform translate-x-full bg-white w-96\" tabindex=\"-1\" aria-labelledby=\"drawer-right-label\">
    <h5 id=\"drawer-cart-label\" class=\"inline-flex items-center mb-4 text-xl uppercase font-bold gap-3\">
      <svg class=\"w-8 h-8 fill-darkGreen\" viewBox=\"0 0 32 32\" fill=\"none\"
        xmlns=\"http://www.w3.org/2000/svg\">
        <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"
          d=\"M1.10466 0.0851504C0.765655 0.191872 0.187446 0.789842 0.0834919 1.14126C-0.10784 1.78807 0.0270594 2.30374 0.515197 2.79126C0.959059 3.2345 1.20751 3.30631 2.2981 3.30631H3.16469L3.20565 3.56501C3.22824 3.70733 3.74428 7.8082 4.35254 12.6782C5.2404 19.7868 5.48692 21.5987 5.60262 21.8673C5.78663 22.2946 6.3553 22.8342 6.80338 23.0068C7.13852 23.1359 7.4412 23.1398 17.2332 23.1398H27.3178L27.6408 22.9907C28.1186 22.7701 28.5501 22.3385 28.7504 21.8806C28.8458 21.6625 29.6324 18.6436 30.4983 15.1719C32.2061 8.32483 32.1615 8.56808 31.7907 8.12795C31.4252 7.69416 32.2745 7.72141 19.1349 7.72141C10.3517 7.72141 7.114 7.70072 7.114 7.64463C7.114 7.41574 6.2711 1.42934 6.20203 1.16775C6.09573 0.764938 5.54156 0.198149 5.13741 0.0788727C4.76905 -0.0298492 1.45355 -0.0246752 1.10466 0.0851504ZM9.12484 25.4909C7.3735 25.9613 6.28996 27.7724 6.73624 29.4836C7.19834 31.2555 9.00901 32.3485 10.7374 31.8988C12.0493 31.5576 13.0224 30.4724 13.2152 29.1355C13.5445 26.8523 11.3468 24.894 9.12484 25.4909ZM22.3868 25.4909C20.6355 25.9613 19.5519 27.7724 19.9982 29.4836C20.4603 31.2555 22.271 32.3485 23.9994 31.8988C25.3113 31.5576 26.2844 30.4724 26.4772 29.1355C26.8065 26.8523 24.6088 24.894 22.3868 25.4909Z\" />
      </svg>
      Корзина
    </h5>

    <button type=\"button\" data-drawer-hide=\"drawer-cart\" aria-controls=\"drawer-cart\" class=\"text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 absolute top-2.5 end-2.5 inline-flex items-center justify-center dark:hover:bg-gray-600 dark:hover:text-white\" >
      <svg class=\"w-3 h-3\" aria-hidden=\"true\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 14 14\">
          <path stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6\"/>
      </svg>
      <span class=\"sr-only\">Close menu</span>
    </button>

    <ul id=\"cart-item-list\">
      ";
        // line 37
        if ((($context["products"] ?? null) || ($context["vouchers"] ?? null))) {
            // line 38
            echo "      <li>
        <table class=\"table table-striped\">
          ";
            // line 40
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 41
                echo "          <tr>
            <td class=\"text-center\">";
                // line 42
                if (twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 42)) {
                    echo " <a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 42);
                    echo "\"><img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 42);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 42);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 42);
                    echo "\" class=\"img-thumbnail\" /></a> ";
                }
                echo "</td>
            <td class=\"text-left\"><a href=\"";
                // line 43
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 43);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 43);
                echo "</a> ";
                if (twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 43)) {
                    // line 44
                    echo "              ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 44));
                    foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                        echo " <br />
              - <small>";
                        // line 45
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 45);
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 45);
                        echo "</small> ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 46
                    echo "              ";
                }
                // line 47
                echo "              ";
                if (twig_get_attribute($this->env, $this->source, $context["product"], "recurring", [], "any", false, false, false, 47)) {
                    echo " <br />
              - <small>";
                    // line 48
                    echo ($context["text_recurring"] ?? null);
                    echo " ";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "recurring", [], "any", false, false, false, 48);
                    echo "</small> ";
                }
                echo "</td>
            <td class=\"text-right\">x ";
                // line 49
                echo twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 49);
                echo "</td>
            <td class=\"text-right\">";
                // line 50
                echo twig_get_attribute($this->env, $this->source, $context["product"], "total", [], "any", false, false, false, 50);
                echo "</td>
            <td class=\"text-center\"><button type=\"button\" onclick=\"cart.remove('";
                // line 51
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 51);
                echo "');\" title=\"";
                echo ($context["button_remove"] ?? null);
                echo "\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-times\"></i></button></td>
          </tr>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 54
            echo "          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["vouchers"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["voucher"]) {
                // line 55
                echo "          <tr>
            <td class=\"text-center\"></td>
            <td class=\"text-left\">";
                // line 57
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "description", [], "any", false, false, false, 57);
                echo "</td>
            <td class=\"text-right\">x&nbsp;1</td>
            <td class=\"text-right\">";
                // line 59
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "amount", [], "any", false, false, false, 59);
                echo "</td>
            <td class=\"text-center text-danger\"><button type=\"button\" onclick=\"voucher.remove('";
                // line 60
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "key", [], "any", false, false, false, 60);
                echo "');\" title=\"";
                echo ($context["button_remove"] ?? null);
                echo "\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-times\"></i></button></td>
          </tr>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['voucher'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 63
            echo "        </table>
      </li>
      <li>
        <div>
          <table class=\"table table-bordered\">
            ";
            // line 68
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["totals"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["total"]) {
                // line 69
                echo "            <tr>
              <td class=\"text-right\"><strong>";
                // line 70
                echo twig_get_attribute($this->env, $this->source, $context["total"], "title", [], "any", false, false, false, 70);
                echo "</strong></td>
              <td class=\"text-right\">";
                // line 71
                echo twig_get_attribute($this->env, $this->source, $context["total"], "text", [], "any", false, false, false, 71);
                echo "</td>
            </tr>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['total'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 74
            echo "          </table>
          <p class=\"text-right\"><a href=\"";
            // line 75
            echo ($context["cart"] ?? null);
            echo "\"><strong><i class=\"fa fa-shopping-cart\"></i> ";
            echo ($context["text_cart"] ?? null);
            echo "</strong></a>&nbsp;&nbsp;&nbsp;<a href=\"";
            echo ($context["checkout"] ?? null);
            echo "\"><strong><i class=\"fa fa-share\"></i> ";
            echo ($context["text_checkout"] ?? null);
            echo "</strong></a></p>
        </div>
      </li>
      ";
        } else {
            // line 79
            echo "      <li>
        <p class=\"text-center\">";
            // line 80
            echo ($context["text_empty"] ?? null);
            echo "</p>
      </li>
      ";
        }
        // line 83
        echo "    </ul>

  </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "berisey/template/common/cart.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  240 => 83,  234 => 80,  231 => 79,  218 => 75,  215 => 74,  206 => 71,  202 => 70,  199 => 69,  195 => 68,  188 => 63,  177 => 60,  173 => 59,  168 => 57,  164 => 55,  159 => 54,  148 => 51,  144 => 50,  140 => 49,  132 => 48,  127 => 47,  124 => 46,  115 => 45,  108 => 44,  102 => 43,  88 => 42,  85 => 41,  81 => 40,  77 => 38,  75 => 37,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/common/cart.twig", "");
    }
}

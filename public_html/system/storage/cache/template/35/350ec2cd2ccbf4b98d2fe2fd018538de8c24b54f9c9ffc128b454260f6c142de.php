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

/* default/template/extension/module/featured_product.twig */
class __TwigTemplate_cde141b40bb596b10f6a35f8f66f4a9d018c63772f1090d78d498477d69b9ef0 extends \Twig\Template
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
            // line 2
            echo "\t<h3>";
            echo ($context["heading_title"] ?? null);
            echo "</h3>
\t<div class=\"row\">
\t\t";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 5
                echo "\t\t\t<div class=\"product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12\">
\t\t\t\t<div class=\"product-thumb transition\">
\t\t\t\t\t<div class=\"image\"><a href=\"";
                // line 7
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 7);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 7);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 7);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 7);
                echo "\" class=\"img-responsive\" /></a></div>
\t\t\t\t\t<div class=\"caption\">
\t\t\t\t\t\t<h4><a href=\"";
                // line 9
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 9);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 9);
                echo "</a></h4>
\t\t\t\t\t\t<p>";
                // line 10
                echo twig_get_attribute($this->env, $this->source, $context["product"], "description", [], "any", false, false, false, 10);
                echo "</p>
\t\t\t\t\t\t";
                // line 11
                if (twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 11)) {
                    // line 12
                    echo "\t\t\t\t\t\t\t<div class=\"rating\">
\t\t\t\t\t\t\t\t";
                    // line 13
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(range(1, 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 14
                        echo "\t\t\t\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["product"], "rating", [], "any", false, false, false, 14) < $context["i"])) {
                            // line 15
                            echo "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-2x\"></i></span>
\t\t\t\t\t\t\t\t\t";
                        } else {
                            // line 17
                            echo "\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-2x\"></i><i class=\"fa fa-star-o fa-stack-2x\"></i></span>
\t\t\t\t\t\t\t\t\t";
                        }
                        // line 19
                        echo "\t\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 20
                    echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 22
                echo "\t\t\t\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 22)) {
                    // line 23
                    echo "\t\t\t\t\t\t\t<p class=\"price\">
\t\t\t\t\t\t\t\t";
                    // line 24
                    if ( !twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 24)) {
                        // line 25
                        echo "\t\t\t\t\t\t\t\t\t";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 25);
                        echo "
\t\t\t\t\t\t\t\t";
                    } else {
                        // line 27
                        echo "\t\t\t\t\t\t\t\t\t<span class=\"price-new\">";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 27);
                        echo "</span> <span class=\"price-old\">";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 27);
                        echo "</span>
\t\t\t\t\t\t\t\t";
                    }
                    // line 29
                    echo "\t\t\t\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 29)) {
                        // line 30
                        echo "\t\t\t\t\t\t\t\t\t<span class=\"price-tax\">";
                        echo ($context["text_tax"] ?? null);
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["product"], "tax", [], "any", false, false, false, 30);
                        echo "</span>
\t\t\t\t\t\t\t\t";
                    }
                    // line 32
                    echo "\t\t\t\t\t\t\t</p>
\t\t\t\t\t\t";
                }
                // line 34
                echo "\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"button-group\">
\t\t\t\t\t\t<button type=\"button\" onclick=\"cart.add('";
                // line 36
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 36);
                echo "');\"><i class=\"fa fa-shopping-cart\"></i> <span class=\"hidden-xs hidden-sm hidden-md\">";
                echo ($context["button_cart"] ?? null);
                echo "</span></button>
\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 37
                echo ($context["button_wishlist"] ?? null);
                echo "\" onclick=\"wishlist.add('";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 37);
                echo "');\"><i class=\"fa fa-heart\"></i></button>
\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 38
                echo ($context["button_compare"] ?? null);
                echo "\" onclick=\"compare.add('";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 38);
                echo "');\"><i class=\"fa fa-exchange\"></i></button>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 43
            echo "\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "default/template/extension/module/featured_product.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  170 => 43,  157 => 38,  151 => 37,  145 => 36,  141 => 34,  137 => 32,  129 => 30,  126 => 29,  118 => 27,  112 => 25,  110 => 24,  107 => 23,  104 => 22,  100 => 20,  94 => 19,  90 => 17,  86 => 15,  83 => 14,  79 => 13,  76 => 12,  74 => 11,  70 => 10,  64 => 9,  53 => 7,  49 => 5,  45 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "default/template/extension/module/featured_product.twig", "");
    }
}

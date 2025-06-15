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

/* default/template/extension/module/featured_article.twig */
class __TwigTemplate_d0b6f4bc639c94069bc3ebbe145fcc5d156101abae6cc4078de2af3a3d78d958 extends \Twig\Template
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
        if (($context["articles"] ?? null)) {
            // line 2
            echo "\t<h3>";
            echo ($context["heading_title"] ?? null);
            echo "</h3>
\t<div class=\"row\">
\t\t";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["articles"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["article"]) {
                // line 5
                echo "\t\t\t<div class=\"product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12\">
\t\t\t\t<div class=\"product-thumb transition\">
\t\t\t\t\t<div class=\"image\"><a href=\"";
                // line 7
                echo twig_get_attribute($this->env, $this->source, $context["article"], "href", [], "any", false, false, false, 7);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "thumb", [], "any", false, false, false, 7);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "name", [], "any", false, false, false, 7);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "name", [], "any", false, false, false, 7);
                echo "\" class=\"img-responsive\" /></a></div>
\t\t\t\t\t<div class=\"caption\">
\t\t\t\t\t\t<h4><a href=\"";
                // line 9
                echo twig_get_attribute($this->env, $this->source, $context["article"], "href", [], "any", false, false, false, 9);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "name", [], "any", false, false, false, 9);
                echo "</a></h4>
\t\t\t\t\t\t<p>";
                // line 10
                echo twig_get_attribute($this->env, $this->source, $context["article"], "description", [], "any", false, false, false, 10);
                echo "</p>
\t\t\t\t\t\t";
                // line 11
                if (twig_get_attribute($this->env, $this->source, $context["article"], "rating", [], "any", false, false, false, 11)) {
                    // line 12
                    echo "\t\t\t\t\t\t\t<div class=\"rating\">
\t\t\t\t\t\t\t\t";
                    // line 13
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(5);
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 14
                        echo "\t\t\t\t\t\t\t\t\t";
                        if ((twig_get_attribute($this->env, $this->source, $context["article"], "rating", [], "any", false, false, false, 14) < $context["i"])) {
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
                echo "\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"button-group\">
\t\t\t\t\t\t<button type=\"button\" onclick=\"location.href = ('";
                // line 24
                echo twig_get_attribute($this->env, $this->source, $context["article"], "href", [], "any", false, false, false, 24);
                echo "');\"><i class=\"fa fa-share\"></i> <span class=\"hidden-xs hidden-sm hidden-md\">";
                echo ($context["button_more"] ?? null);
                echo "</span></button>
\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 25
                echo twig_get_attribute($this->env, $this->source, $context["article"], "date_added", [], "any", false, false, false, 25);
                echo "\" \"><i class=\"fa fa-clock-o\"></i></button>
\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 26
                echo ($context["text_views"] ?? null);
                echo " ";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "viewed", [], "any", false, false, false, 26);
                echo "\" \"><i class=\"fa fa-eye\"></i></button>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['article'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 31
            echo "\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "default/template/extension/module/featured_article.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  131 => 31,  118 => 26,  114 => 25,  108 => 24,  104 => 22,  100 => 20,  94 => 19,  90 => 17,  86 => 15,  83 => 14,  79 => 13,  76 => 12,  74 => 11,  70 => 10,  64 => 9,  53 => 7,  49 => 5,  45 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "default/template/extension/module/featured_article.twig", "");
    }
}

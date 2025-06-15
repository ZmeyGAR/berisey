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

/* default/template/blog/latest.twig */
class __TwigTemplate_a1a62c6f80180d9ae9a0d61b049a848fa60a0ec92af4dc4a1fa6fcbe4c0b905e extends \Twig\Template
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
        echo ($context["header"] ?? null);
        echo "
<div class=\"container\">
\t<ul class=\"breadcrumb\">
\t\t";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 5
            echo "\t\t\t<li><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 5);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 5);
            echo "</a></li>
\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        echo "\t</ul>
\t<div class=\"row\">";
        // line 8
        echo ($context["column_left"] ?? null);
        echo "
\t\t";
        // line 9
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 10
            echo "\t\t\t";
            $context["class"] = "col-sm-6";
            // line 11
            echo "\t\t";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 12
            echo "\t\t\t";
            $context["class"] = "col-sm-9";
            // line 13
            echo "\t\t";
        } else {
            // line 14
            echo "\t\t\t";
            $context["class"] = "col-sm-12";
            // line 15
            echo "\t\t";
        }
        // line 16
        echo "\t\t<div id=\"content\" class=\"";
        echo ($context["class"] ?? null);
        echo " showcase-list\">
\t\t\t";
        // line 17
        echo ($context["content_top"] ?? null);
        echo "
\t\t\t<h1>";
        // line 18
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t\t\t";
        // line 19
        if (($context["articles"] ?? null)) {
            // line 20
            echo "\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-2 col-sm-6 hidden-xs\">
\t\t\t\t\t\t<div class=\"btn-group btn-group-sm\">
\t\t\t\t\t\t\t<button type=\"button\" id=\"list-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"";
            // line 23
            echo ($context["button_list"] ?? null);
            echo "\"><i class=\"fa fa-th-list\"></i></button>
\t\t\t\t\t\t\t<button type=\"button\" id=\"grid-view\" class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"";
            // line 24
            echo ($context["button_grid"] ?? null);
            echo "\"><i class=\"fa fa-th\"></i></button>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-3 col-sm-6\">
\t\t\t\t\t\t<div class=\"form-group\"><a href=\"";
            // line 28
            echo ($context["compare"] ?? null);
            echo "\" id=\"compare-total\" class=\"btn btn-link\">";
            echo ($context["text_compare"] ?? null);
            echo "</a></div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-4 col-xs-6\">
\t\t\t\t\t\t<div class=\"form-group input-group input-group-sm\">
\t\t\t\t\t\t\t<label class=\"input-group-addon\" for=\"input-sort\">";
            // line 32
            echo ($context["text_sort"] ?? null);
            echo "</label>
\t\t\t\t\t\t\t<select id=\"input-sort\" class=\"form-control\" onchange=\"location = this.value;\">
\t\t\t\t\t\t\t\t";
            // line 34
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 35
                echo "\t\t\t\t\t\t\t\t\t";
                if ((twig_get_attribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 35) == sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    // line 36
                    echo "\t\t\t\t\t\t\t\t\t\t<option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 36);
                    echo "\" selected=\"selected\">";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 36);
                    echo "</option>
\t\t\t\t\t\t\t\t\t";
                } else {
                    // line 38
                    echo "\t\t\t\t\t\t\t\t\t\t<option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 38);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 38);
                    echo "</option>
\t\t\t\t\t\t\t\t\t";
                }
                // line 40
                echo "\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sorts'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 41
            echo "\t\t\t\t\t\t\t</select>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-md-3 col-xs-6\">
\t\t\t\t\t\t<div class=\"form-group input-group input-group-sm\">
\t\t\t\t\t\t\t<label class=\"input-group-addon\" for=\"input-limit\">";
            // line 46
            echo ($context["text_limit"] ?? null);
            echo "</label>
\t\t\t\t\t\t\t<select id=\"input-limit\" class=\"form-control\" onchange=\"location = this.value;\">
\t\t\t\t\t\t\t\t";
            // line 48
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["limits"]);
            foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                // line 49
                echo "\t\t\t\t\t\t\t\t\t";
                if ((twig_get_attribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 49) == ($context["limit"] ?? null))) {
                    // line 50
                    echo "\t\t\t\t\t\t\t\t\t\t<option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 50);
                    echo "\" selected=\"selected\">";
                    echo twig_get_attribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 50);
                    echo "</option>
\t\t\t\t\t\t\t\t\t";
                } else {
                    // line 52
                    echo "\t\t\t\t\t\t\t\t\t\t<option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 52);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 52);
                    echo "</option>
\t\t\t\t\t\t\t\t\t";
                }
                // line 54
                echo "\t\t\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['limits'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 55
            echo "\t\t\t\t\t\t\t</select>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t<div class=\"row\">  
\t\t\t\t\t";
            // line 60
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["articles"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["article"]) {
                echo " 
\t\t\t\t\t\t<div class=\"product-layout product-list col-xs-12\">
\t\t\t\t\t\t\t<div class=\"product-thumb\">
\t\t\t\t\t\t\t\t<div class=\"image\"><a href=\"";
                // line 63
                echo (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = $context["article"]) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["href"] ?? null) : null);
                echo "\"><img src=\"";
                echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["article"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["thumb"] ?? null) : null);
                echo "\" alt=\"";
                echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["article"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["name"] ?? null) : null);
                echo "\" title=\"";
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["article"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["name"] ?? null) : null);
                echo "\" class=\"img-responsive\" /></a></div>
\t\t\t\t\t\t\t\t<div class=\"caption\">
\t\t\t\t\t\t\t\t\t<h4><a href=\"";
                // line 65
                echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["article"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4["href"] ?? null) : null);
                echo "\">";
                echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["article"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666["name"] ?? null) : null);
                echo "</a></h4>
\t\t\t\t\t\t\t\t\t<p class=\"description\">";
                // line 66
                echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["article"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e["description"] ?? null) : null);
                echo "</p>
\t\t\t\t\t\t\t\t\t";
                // line 67
                if (($context["configblog_review_status"] ?? null)) {
                    // line 68
                    echo "\t\t\t\t\t\t\t\t\t\t";
                    if (twig_get_attribute($this->env, $this->source, $context["article"], "rating", [], "any", false, false, false, 68)) {
                        // line 69
                        echo "\t\t\t\t\t\t\t\t\t\t\t<div class=\"rating\">
\t\t\t\t\t\t\t\t\t\t\t\t";
                        // line 70
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(range(1, 5));
                        foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                            // line 71
                            echo "\t\t\t\t\t\t\t\t\t\t\t\t\t";
                            if ((twig_get_attribute($this->env, $this->source, $context["article"], "rating", [], "any", false, false, false, 71) < $context["i"])) {
                                echo " <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-2x\"></i></span> ";
                            } else {
                                echo " <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-2x\"></i><i class=\"fa fa-star-o fa-stack-2x\"></i></span>";
                            }
                            // line 72
                            echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 73
                        echo "\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t";
                    }
                    // line 75
                    echo "\t\t\t\t\t\t\t\t\t";
                }
                // line 76
                echo "\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"button-group\">
\t\t\t\t\t\t\t\t\t<button type=\"button\" onclick=\"location.href = ('";
                // line 78
                echo twig_get_attribute($this->env, $this->source, $context["article"], "href", [], "any", false, false, false, 78);
                echo "');\"><i class=\"fa fa-share\"></i> <span class=\"hidden-xs hidden-sm hidden-md\">";
                echo ($context["button_more"] ?? null);
                echo "</span></button>
\t\t\t\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 79
                echo twig_get_attribute($this->env, $this->source, $context["article"], "date_added", [], "any", false, false, false, 79);
                echo "\" \"><i class=\"fa fa-clock-o\"></i></button>
\t\t\t\t\t\t\t\t\t<button type=\"button\" data-toggle=\"tooltip\" title=\"";
                // line 80
                echo ($context["text_views"] ?? null);
                echo " ";
                echo twig_get_attribute($this->env, $this->source, $context["article"], "viewed", [], "any", false, false, false, 80);
                echo "\" \"><i class=\"fa fa-eye\"></i></button>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['article'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 85
            echo "\t\t\t\t</div>
\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-sm-6 text-left\">";
            // line 87
            echo ($context["pagination"] ?? null);
            echo "</div>
\t\t\t\t</div>
\t\t\t";
        } else {
            // line 90
            echo "\t\t\t\t<p>";
            echo ($context["text_empty"] ?? null);
            echo "</p>
\t\t\t\t<div class=\"buttons\">
\t\t\t\t\t<div class=\"pull-right\"><a href=\"";
            // line 92
            echo ($context["continue"] ?? null);
            echo "\" class=\"btn btn-primary\">";
            echo ($context["button_continue"] ?? null);
            echo "</a></div>
\t\t\t\t</div>
\t\t\t";
        }
        // line 95
        echo "\t\t\t";
        echo ($context["content_bottom"] ?? null);
        echo "
\t\t</div>
\t\t";
        // line 97
        echo ($context["column_right"] ?? null);
        echo "
\t</div>
</div>
";
        // line 100
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "default/template/blog/latest.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  331 => 100,  325 => 97,  319 => 95,  311 => 92,  305 => 90,  299 => 87,  295 => 85,  282 => 80,  278 => 79,  272 => 78,  268 => 76,  265 => 75,  261 => 73,  255 => 72,  248 => 71,  244 => 70,  241 => 69,  238 => 68,  236 => 67,  232 => 66,  226 => 65,  215 => 63,  207 => 60,  200 => 55,  194 => 54,  186 => 52,  178 => 50,  175 => 49,  171 => 48,  166 => 46,  159 => 41,  153 => 40,  145 => 38,  137 => 36,  134 => 35,  130 => 34,  125 => 32,  116 => 28,  109 => 24,  105 => 23,  100 => 20,  98 => 19,  94 => 18,  90 => 17,  85 => 16,  82 => 15,  79 => 14,  76 => 13,  73 => 12,  70 => 11,  67 => 10,  65 => 9,  61 => 8,  58 => 7,  47 => 5,  43 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "default/template/blog/latest.twig", "");
    }
}

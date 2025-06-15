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

/* default/template/extension/module/carousel.twig */
class __TwigTemplate_a7b1c5bc12d21f4c1c38ef50ba6cfea36a0a98efd10c51953c5ab2b9af56c127 extends \Twig\Template
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
        echo "<div class=\"carousel swiper-viewport\">
\t<div id=\"carousel";
        // line 2
        echo ($context["module"] ?? null);
        echo "\" class=\"swiper-container\">
\t\t<div class=\"swiper-wrapper\">
\t\t\t";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
            // line 5
            echo "\t\t\t\t<div class=\"swiper-slide text-center\">";
            if (twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 5)) {
                echo "<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 5);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 5);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 5);
                echo "\" class=\"img-responsive\" /></a>";
            } else {
                echo "<img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 5);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 5);
                echo "\" class=\"img-responsive\" />";
            }
            echo "</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        echo "\t\t</div>
\t</div>
\t<div class=\"swiper-pagination carousel";
        // line 9
        echo ($context["module"] ?? null);
        echo "\"></div>
\t<div class=\"swiper-pager\">
\t\t<div class=\"swiper-button-next\"></div>
\t\t<div class=\"swiper-button-prev\"></div>
\t</div>
</div>
<script>
\t\$('#carousel";
        // line 16
        echo ($context["module"] ?? null);
        echo "').swiper({
\t\tmode: 'horizontal',
\t\tslidesPerView: 5,
\t\tpagination: '.carousel";
        // line 19
        echo ($context["module"] ?? null);
        echo "',
\t\tpaginationClickable: true,
\t\tnextButton: '.carousel .swiper-button-next',
\t\tprevButton: '.carousel .swiper-button-prev',
\t\tautoplay: 2500,
\t\tloop: true
\t});
</script>";
    }

    public function getTemplateName()
    {
        return "default/template/extension/module/carousel.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  92 => 19,  86 => 16,  76 => 9,  72 => 7,  49 => 5,  45 => 4,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "default/template/extension/module/carousel.twig", "");
    }
}

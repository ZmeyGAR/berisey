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

/* default/template/extension/module/slideshow.twig */
class __TwigTemplate_864e1df3cbc2fc7b087e087df6c97c15dd78f8c73438caf32bf4a92ae0d6ef3e extends \Twig\Template
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
        if (($context["banners"] ?? null)) {
            // line 2
            echo "\t<div class=\"slideshow swiper-viewport\">
\t\t<div id=\"slideshow";
            // line 3
            echo ($context["module"] ?? null);
            echo "\" class=\"swiper-container\">
\t\t\t<div class=\"swiper-wrapper\">
\t\t\t\t";
            // line 5
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
                // line 6
                echo "\t\t\t\t\t<div class=\"swiper-slide text-center\">";
                if (twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 6)) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 6);
                    echo "\"><img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 6);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 6);
                    echo "\" class=\"img-responsive\" /></a>";
                } else {
                    echo "<img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 6);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 6);
                    echo "\" class=\"img-responsive\" />";
                }
                echo "</div>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 8
            echo "\t\t\t</div>
\t\t</div>
\t\t<div class=\"swiper-pagination slideshow";
            // line 10
            echo ($context["module"] ?? null);
            echo "\"></div>
\t\t<div class=\"swiper-pager\">
\t\t\t<div class=\"swiper-button-next\"></div>
\t\t\t<div class=\"swiper-button-prev\"></div>
\t\t</div>
\t</div>
\t<script>
\t\t\$('#slideshow";
            // line 17
            echo ($context["module"] ?? null);
            echo "').swiper({
\t\t\tmode: 'horizontal',
\t\t\tslidesPerView: 1,
\t\t\tpagination: '.slideshow";
            // line 20
            echo ($context["module"] ?? null);
            echo "',
\t\t\tpaginationClickable: true,
\t\t\tnextButton: '.slideshow .swiper-button-next',
\t\t\tprevButton: '.slideshow .swiper-button-prev',
\t\t\tspaceBetween: 30,
\t\t\tautoplay: 2500,
\t\t\tautoplayDisableOnInteraction: true,
\t\t\tloop: true
\t\t});
\t</script>
";
        }
    }

    public function getTemplateName()
    {
        return "default/template/extension/module/slideshow.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  94 => 20,  88 => 17,  78 => 10,  74 => 8,  51 => 6,  47 => 5,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "default/template/extension/module/slideshow.twig", "");
    }
}

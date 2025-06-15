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

/* berisey/template/extension/module/banner.twig */
class __TwigTemplate_dabd3c1a975e1be095748ecc5ae1c6e9a9bacea7fe13883a6175ec1a12fcb44a extends \Twig\Template
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
        echo "

<section id=\"banner";
        // line 3
        echo ($context["module"] ?? null);
        echo "\" class=\"flex w-full sticky top-[calc(var(--header-nav-height))] bottom-0  h-[460px] xl-mobile:h-[50vw] md:h-[460px] main-bg-linear z-10\">
\t<div class=\"!hidden text-2xl font-extrabold text-lightBlack xl-mobile:text-[5vw] md:text-[clamp(2.5rem,_5vw,_3rem)] leading-[1.1] md:leading-none text-center xl-mobile:text-start bg-clip-text text-transparent bg-gradient-to-r from-lightGreen to-darkGreen\"></div>
\t<div class=\"swiper h-full md:max-w-7xl\" 
\t\tx-data=\"{ swiper: null }\" 
\t\tx-ref=\"mainBanner\"
\t\tx-init=\"swiper = new Swiper(\$refs.mainBanner, {effect: 'fade',fadeEffect: {crossFade: true},speed: 1000,autoplay: {delay: 5000,pauseOnMouseEnter: true},loop: true,keyboard: true})\">
\t\t<div class=\"swiper-wrapper h-full\">
\t\t\t";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
            // line 11
            echo "\t\t\t\t<div class=\"swiper-slide w-full relative h-auto\">
\t\t
\t\t\t\t\t<div class=\"grid h-full grid-rows-2 grid-cols-1 xl-mobile:grid-cols-12 xl-mobile:grid-rows-1 md:gap-4 p-6 gap-3\">

\t\t\t\t\t\t<div class=\"flex flex-col p-3 justify-evenly xl-mobile:col-span-7 gap-4\" x-data=\"{link: '";
            // line 15
            echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 15);
            echo "'}\">
\t\t\t\t\t\t\t
\t\t\t\t\t\t\t";
            // line 17
            echo twig_get_attribute($this->env, $this->source, $context["banner"], "content", [], "any", false, false, false, 17);
            echo "

\t\t\t\t\t\t\t<div class=\"w-full inline-flex justify-center xl-mobile:justify-start\" x-show=\"link\">
\t\t\t\t\t\t\t\t<a :href=\"link\" class=\"text-white bg-gradient-to-r from-lightGreen to-darkGreen hover:scale-110 focus:ring-4 focus:bg-darkGreen font-medium rounded-md text-base p-3 xl-notebook:p-5 focus:outline-none\">
\t\t\t\t\t\t\t\t\tУзнать подробнее
\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t</div>

\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            // line 26
            if (twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 26)) {
                // line 27
                echo "\t\t\t\t\t\t\t<div class=\"relative justify-center flex w-full xl-mobile:col-span-5 md:p-0 md:h-full md:max-w-full md:max-h-full\">
\t\t\t\t\t\t\t\t<picture class=\"flex justify-center h-full object-contain image-reflect\">
\t\t\t\t\t\t\t\t\t<source srcset=\"";
                // line 29
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 29);
                echo "\" type=\"image/webp\" />
\t\t\t\t\t\t\t\t\t<img src=\"";
                // line 30
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 30);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 30);
                echo "\"/>
\t\t\t\t\t\t\t\t</picture>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            // line 34
            echo "\t\t\t\t\t\t


\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "\t\t</div>
\t</div>
</section>";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/banner.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  108 => 40,  97 => 34,  88 => 30,  84 => 29,  80 => 27,  78 => 26,  66 => 17,  61 => 15,  55 => 11,  51 => 10,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/banner.twig", "");
    }
}

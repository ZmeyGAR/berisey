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

/* berisey/template/extension/module/custom/total.twig */
class __TwigTemplate_414d543320c068c58151599bf704ca0ad11a86a6d2c64f74c90c47fcfc72d664 extends \Twig\Template
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
        echo "<div class=\"space-y-6\">
\t<h4 class=\"text-xl font-semibold text-lightBlack\">";
        // line 2
        echo ($context["heading_total"] ?? null);
        echo "</h4>

\t<div class=\"space-y-4\">
\t\t<div class=\"space-y-2\">
\t\t\t";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["totals"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["total"]) {
            echo " 
\t\t\t\t<dl class=\"group flex items-center justify-between gap-4 last:border-t last:border-lightGray/50 last:pt-2\">
\t\t\t\t\t<dt class=\"text-lightBlack group-last:font-bold group-last:text-lg\">";
            // line 8
            echo twig_get_attribute($this->env, $this->source, $context["total"], "title", [], "any", false, false, false, 8);
            echo ":</dt>
\t\t\t\t\t<dd class=\"text-base font-medium text-lightBlack group-last:font-bold group-last:text-lg\">";
            // line 9
            echo twig_get_attribute($this->env, $this->source, $context["total"], "text", [], "any", false, false, false, 9);
            echo "</dd>
\t\t\t\t</dl>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['total'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 11
        echo " 
\t\t</div>

\t</div>

</div>";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/total.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 11,  58 => 9,  54 => 8,  47 => 6,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/total.twig", "");
    }
}

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

/* berisey/template/extension/module/custom/comment.twig */
class __TwigTemplate_db450e78a5091027127e9b192ae9b1f5799a89228d2055edef4536ea96c8db74 extends \Twig\Template
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
        echo "<h4 class=\"block text-lightBlack text-base font-bold sm-mobile:text-xl pb-6 last:pb-0\">
    <span class=\"line-clamp-2\">";
        // line 2
        echo ($context["heading_comment"] ?? null);
        echo "</span>
</h4>
<div class=\"alert-target\"></div>
<div class=\"flex flex-col flex-1\">
\t<label for=\"input-comment\" class=\"block mb-2 text-sm font-medium text-gray-900 dark:text-white\">";
        // line 6
        echo ($context["entry_comment"] ?? null);
        echo "</label>
\t<textarea id=\"input-comment\" rows=\"5\" class=\"block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500\" 
\t\tplaceholder=\"";
        // line 8
        echo ($context["entry_comment"] ?? null);
        echo "\">";
        echo ($context["comment"] ?? null);
        echo "</textarea>
</div>
";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/comment.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  52 => 8,  47 => 6,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/comment.twig", "");
    }
}

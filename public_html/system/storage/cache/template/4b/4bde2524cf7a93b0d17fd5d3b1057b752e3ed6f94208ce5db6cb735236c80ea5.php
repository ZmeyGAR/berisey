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

/* common/footer.twig */
class __TwigTemplate_a637d7895258d3e632fa070c2e79fc34965ad259a3b6ba4442b3f9d370bf69fd extends \Twig\Template
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
        echo "<footer>
\t<div class=\"container\">
\t\t<a href=\"https://liveopencart.ru/?utm_source=ocstore3&utm_medium=install&utm_campaign=3037\" target=\"_blank\">";
        // line 3
        echo ($context["text_project"] ?? null);
        echo "</a>|<a href=\"https://liveopencart.ru/docs-opencart3/?utm_source=ocstore3&utm_medium=install&utm_campaign=3037\" target=\"_blank\">";
        echo ($context["text_documentation"] ?? null);
        echo "</a>|<a href=\"https://forum.liveopencart.ru/?utm_source=ocstore3&utm_medium=install&utm_campaign=3037\" target=\"_blank\">";
        echo ($context["text_support"] ?? null);
        echo "</a>
\t\t<br />
    </div>
</footer>
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "common/footer.twig", "");
    }
}

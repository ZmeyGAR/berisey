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

/* berisey/template/common/home.twig */
class __TwigTemplate_3ba28d4cc0a645801cf2b92de67f72529c89a87c0bd3426d032bcac1427e43fc extends \Twig\Template
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
        echo "    ";
        echo ($context["header"] ?? null);
        echo "

    ";
        // line 3
        echo ($context["content_top"] ?? null);
        echo "

    <main id=\"main-content\" class=\"max-w-full md:px-3\">
      <div class=\"main-container has-section-divided max-w-screen-xl-monitor mx-auto grid main-bg-linear gap-36 pt-11 *:-my-11\">
        ";
        // line 7
        echo ($context["column_left"] ?? null);
        echo "
        ";
        // line 8
        echo ($context["content_bottom"] ?? null);
        echo "
        ";
        // line 9
        echo ($context["column_right"] ?? null);
        echo "
      </div>

      ";
        // line 12
        echo ($context["footer"] ?? null);
        echo "
    </main>
  </body>
</html>";
    }

    public function getTemplateName()
    {
        return "berisey/template/common/home.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  64 => 12,  58 => 9,  54 => 8,  50 => 7,  43 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/common/home.twig", "");
    }
}

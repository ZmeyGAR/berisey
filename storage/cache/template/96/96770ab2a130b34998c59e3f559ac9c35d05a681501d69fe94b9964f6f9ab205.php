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

/* berisey/template/extension/module/custom/payment.twig */
class __TwigTemplate_b19870aeae015a6576198c5d07f0d3926d2e53080692229e0176f55598e02eed extends \Twig\Template
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
        echo ($context["heading_payment"] ?? null);
        echo "</span>
</h4>

";
        // line 5
        if (($context["error_warning"] ?? null)) {
            echo " 
  <div class=\"alert alert-warning\"><i class=\"fa fa-exclamation-circle\"></i> ";
            // line 6
            echo ($context["error_warning"] ?? null);
            echo "</div>
";
        }
        // line 8
        echo "
<div class=\"flex flex-col flex-1\">
  ";
        // line 10
        if (($context["payment_methods"] ?? null)) {
            echo " 
    <div class=\"flex gap-3 flex-wrap\">
    ";
            // line 12
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["payment_methods"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["payment_method"]) {
                echo " 
      ";
                // line 13
                $context["code"] = (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = $context["payment_method"]) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["code"] ?? null) : null);
                echo " 

      <div class=\"flex items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto max-w-max has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"payment_method_";
                // line 16
                echo ($context["code"] ?? null);
                echo "\" type=\"radio\" 
          name=\"payment_method\" 
          value=\"";
                // line 18
                echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["payment_method"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["code"] ?? null) : null);
                echo "\"
          ";
                // line 19
                if ((((($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["payment_method"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["code"] ?? null) : null) == ($context["code"] ?? null)) ||  !($context["code"] ?? null))) {
                    echo " checked=\"checked\" ";
                }
                // line 20
                echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"payment_method_";
                // line 21
                echo ($context["code"] ?? null);
                echo "\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">
          ";
                // line 22
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["payment_method"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["title"] ?? null) : null);
                echo " 
        </label>
          ";
                // line 24
                if ((($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["payment_method"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4["terms"] ?? null) : null)) {
                    echo " 
            (";
                    // line 25
                    echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["payment_method"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666["terms"] ?? null) : null);
                    echo ")
          ";
                }
                // line 26
                echo " 
          ";
                // line 27
                if (twig_get_attribute($this->env, $this->source, $context["payment_method"], "description", [], "array", true, true, false, 27)) {
                    echo " 
            <br /><small>";
                    // line 28
                    echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["payment_method"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e["description"] ?? null) : null);
                    echo "</small>
          ";
                }
                // line 29
                echo "  
      </div>
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['payment_method'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 31
            echo " 
  </div>
  ";
        }
        // line 33
        echo " 

  <script>
        \$(function(){

            let customer_group_id = ";
        // line 38
        echo ($context["customer_group_id"] ?? null);
        echo ";

            if ( \$('#custom-customer input[name=\\'customer_group_id\\']:checked').val() !== undefined ) {
                customer_group_id = \$('#custom-customer input[name=\\'customer_group_id\\']:checked').val();
            }

            custom_block.payment( customer_group_id );
            
        });
    </script>
</div>";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/payment.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  142 => 38,  135 => 33,  130 => 31,  122 => 29,  117 => 28,  113 => 27,  110 => 26,  105 => 25,  101 => 24,  96 => 22,  92 => 21,  89 => 20,  85 => 19,  81 => 18,  76 => 16,  70 => 13,  64 => 12,  59 => 10,  55 => 8,  50 => 6,  46 => 5,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/payment.twig", "");
    }
}

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
class __TwigTemplate_8b856a190a6b9bfbfa22529d70e6ad64e70b65eb0c0b1c960b69913654c14bc1 extends \Twig\Template
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
  <script>
    iziToast.warning({
      message: '";
            // line 8
            echo ($context["error_warning"] ?? null);
            echo "',
      target: '#custom-payment .alert-target',
      targetFirst: false,
    });
  </script>
";
        }
        // line 14
        echo "
<div class=\"alert-target\"></div>
<div class=\"flex flex-col flex-1\">
  ";
        // line 17
        if (($context["payment_methods"] ?? null)) {
            echo " 
    <div class=\"flex gap-3 flex-wrap\">
    ";
            // line 19
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["payment_methods"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["payment_method"]) {
                echo " 
      ";
                // line 20
                $context["code"] = (($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = $context["payment_method"]) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["code"] ?? null) : null);
                echo " 

      <div class=\"flex items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto max-w-max has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"payment_method_";
                // line 23
                echo ($context["code"] ?? null);
                echo "\" type=\"radio\" 
          name=\"payment_method\" 
          value=\"";
                // line 25
                echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["payment_method"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["code"] ?? null) : null);
                echo "\"
          ";
                // line 26
                if ((((($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["payment_method"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["code"] ?? null) : null) == ($context["code"] ?? null)) ||  !($context["code"] ?? null))) {
                    echo " checked=\"checked\" ";
                }
                // line 27
                echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"payment_method_";
                // line 28
                echo ($context["code"] ?? null);
                echo "\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">
          ";
                // line 29
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["payment_method"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["title"] ?? null) : null);
                echo " 
        </label>
          ";
                // line 31
                if ((($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["payment_method"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4["terms"] ?? null) : null)) {
                    echo " 
            (";
                    // line 32
                    echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["payment_method"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666["terms"] ?? null) : null);
                    echo ")
          ";
                }
                // line 33
                echo " 
          ";
                // line 34
                if (twig_get_attribute($this->env, $this->source, $context["payment_method"], "description", [], "array", true, true, false, 34)) {
                    echo " 
            <br /><small>";
                    // line 35
                    echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["payment_method"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e["description"] ?? null) : null);
                    echo "</small>
          ";
                }
                // line 36
                echo "  
      </div>
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['payment_method'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 38
            echo " 
  </div>
  ";
        }
        // line 40
        echo " 

  <script>
        \$(function(){

            let customer_group_id = ";
        // line 45
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
        return array (  149 => 45,  142 => 40,  137 => 38,  129 => 36,  124 => 35,  120 => 34,  117 => 33,  112 => 32,  108 => 31,  103 => 29,  99 => 28,  96 => 27,  92 => 26,  88 => 25,  83 => 23,  77 => 20,  71 => 19,  66 => 17,  61 => 14,  52 => 8,  46 => 5,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/payment.twig", "");
    }
}

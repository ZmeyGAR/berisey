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

/* berisey/template/extension/module/custom/login.twig */
class __TwigTemplate_88d0428469b514150c1f3eddd37cccb392e5b9ea79b5f0dbb027ffc9a5f94663 extends \Twig\Template
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


<div class=\"flex flex-col sm-tablet:flex-row gap-6 h-full\">
  <div class=\"flex-1 md:max-w-80 p-4 rounded-lg bg-lightBlue flex flex-col h-full\">

    <h4 class=\"block text-lightBlack text-base font-bold sm-mobile:text-xl pb-6 last:pb-0\">
        <span class=\"line-clamp-2\">";
        // line 8
        echo ($context["heading_login"] ?? null);
        echo "</span>
    </h4>

    <div class=\"flex gap-4 pt-3 flex-wrap *:max-w-full\">
      <div class=\"flex h-max items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"register-radio-1\" type=\"radio\"
          name=\"account\"
          value=\"register\"
          ";
        // line 16
        if ((($context["account"] ?? null) == "register")) {
            echo " checked=\"checked\" ";
        }
        // line 17
        echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"register-radio-1\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">";
        // line 18
        echo ($context["text_register"] ?? null);
        echo "</label>
      </div>
      ";
        // line 20
        if (($context["checkout_guest"] ?? null)) {
            // line 21
            echo "        <div class=\"flex h-max items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
          <input id=\"guest-radio-2\" type=\"radio\"
            name=\"account\"
            value=\"guest\"
            ";
            // line 25
            if ((($context["account"] ?? null) == "guest")) {
                echo " checked=\"checked\" ";
            }
            // line 26
            echo "            class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
          <label for=\"guest-radio-2\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">";
            // line 27
            echo ($context["text_guest"] ?? null);
            echo "</label>
        </div>
      ";
        }
        // line 30
        echo "      <div class=\"flex h-max items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"auth-radio-1\" type=\"radio\"
          name=\"account\"
          value=\"auth\"
          ";
        // line 34
        if ((($context["account"] ?? null) == "auth")) {
            echo " checked=\"checked\" ";
        }
        // line 35
        echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"auth-radio-1\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">";
        // line 36
        echo ($context["text_auth"] ?? null);
        echo "</label>
      </div>
    </div>
  </div>

  <form id=\"auth-form\" class=\"w-full flex-1 p-4 rounded-lg bg-lightBlue flex flex-col h-max\">
    <div class=\"flex flex-col h-max max-w-xl w-full mx-auto\">
    
      <h4 class=\"block text-lightBlack text-base font-bold sm-mobile:text-xl pb-2 last:pb-0\">
        <span class=\"line-clamp-2\">";
        // line 45
        echo ($context["button_login"] ?? null);
        echo "</span>
      </h4>
      <div class=\"group form-group\">
        <label for=\"input-email\" class=\"block mb-2 text-sm font-medium\">";
        // line 48
        echo ($context["entry_email"] ?? null);
        echo "</label>
        <input type=\"text\" name=\"email\" value=\"\" placeholder=\"";
        // line 49
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" autocomplete=\"email\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\">
      </div>
    
      <div class=\"group form-group\">
        <label for=\"input-password\" class=\"block mb-2 text-sm font-medium\">";
        // line 55
        echo ($context["entry_password"] ?? null);
        echo "</label>
        <input type=\"password\" name=\"password\" value=\"\" placeholder=\"";
        // line 56
        echo ($context["entry_password"] ?? null);
        echo "\" id=\"input-password\" autocomplete=\"none\" aria-autocomplete=\"inline\"
          class=\"block w-full p-2.5 bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg
          focus:ring-lightGreen focus:border-darkGreen
            [&.has-error]:focus:red-600 [&.has-error]:focus:border-red-600
          group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\">
      </div>
    
      <div id=\"button-login-action\" class=\"flex flex-col flex-1 gap-3 items-end justify-between\">
        <a href=\"";
        // line 64
        echo ($context["forgotten"] ?? null);
        echo "\" class=\"font-medium text-darkGreen hover:text-lightGreen underline\">";
        echo ($context["text_forgotten"] ?? null);
        echo "</a>
        <input type=\"button\"
          id=\"button-login\"
          value=\"";
        // line 67
        echo ($context["button_login"] ?? null);
        echo "\"
          class=\"w-full text-white bg-gradient-to-r from-lightGreen to-darkGreen focus:ring-4 focus:bg-darkGreen font-medium rounded-md text-base p-3 xl-notebook:p-5 focus:outline-none cursor-pointer\" />
      </div>
    </div>
  
  </form>
</div>



<script type=\"text/javascript\"><!--
  jQuery('[name=account]')
    .on('change', function(event){

    jQuery('#custom-login .panel-body').find('.alert').remove();
    let account = event.target.value;

    \$.ajax({
      url: 'index.php?route=extension/module/custom/login/save',
      data: {'account': account},
      dataType: 'json',
      type: 'post',
      success: function(){
        custom_block.render('customer');
      },
      error: function(xhr, ajaxOptions, thrownError) {
        console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
      }
    });

    if (account === 'auth') {

      jQuery('#auth-form').removeClass('hidden');


      jQuery('#custom-customer').addClass('hidden');
      jQuery('#custom-shipping').addClass('hidden');
      jQuery('#custom-payment').addClass('hidden');
      jQuery('#custom-comment').addClass('hidden');
      jQuery('#custom-module').addClass('hidden');
      jQuery('#custom-total').addClass('hidden');
      jQuery('#custom-confirm').addClass('hidden');

    } else {

      jQuery('#auth-form').addClass('hidden');

      jQuery('#custom-customer').removeClass('hidden');
      jQuery('#custom-shipping').removeClass('hidden');
      jQuery('#custom-payment').removeClass('hidden');
      jQuery('#custom-comment').removeClass('hidden');
      jQuery('#custom-module').removeClass('hidden');
      jQuery('#custom-total').removeClass('hidden');
      jQuery('#custom-confirm').removeClass('hidden');

    }

  });
  jQuery(document).ready(function(\$) {
    jQuery('[name=account]:checked').trigger('change'); 
  });

  jQuery('#auth-form').on('submit', function(event){

    event.preventDefault();

    \$.ajax({
      url: 'index.php?route=checkout/login/save',
      data: jQuery(this).serialize(),
      dataType: 'json',
      type: 'post',
      success: function(json){

        if (json['redirect']) {
          location = json['redirect'];
        } else if (json['error']) {
          if (json['error']['warning']) {
            iziToast.warning({
              message: json['error']['warning'],
              target: '#custom-login .panel-body',
              targetFirst: true,
            });
          }
        }
      },
      error: function(xhr, ajaxOptions, thrownError) {
        console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
      }
    });

  });
//--></script>";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/login.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  157 => 67,  149 => 64,  138 => 56,  134 => 55,  125 => 49,  121 => 48,  115 => 45,  103 => 36,  100 => 35,  96 => 34,  90 => 30,  84 => 27,  81 => 26,  77 => 25,  71 => 21,  69 => 20,  64 => 18,  61 => 17,  57 => 16,  46 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/login.twig", "");
    }
}

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

/* berisey/template/extension/module/custom/customer.twig */
class __TwigTemplate_5a1200d925b0627a04bc0650ff28028556f01070a775d9c563ca7f28590db63c extends \Twig\Template
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
<h4 class=\"block text-lightBlack text-base font-bold sm-mobile:text-xl pb-6 last:pb-0\">
    <span class=\"line-clamp-2\">";
        // line 3
        echo ($context["heading_customer"] ?? null);
        echo "</span>
</h4>

<div class=\"alert-target\"></div>
<div class=\"flex flex-wrap gap-x-3 *:xl-mobile:max-w-[calc(50%-0.75rem)] *:sm-notebook:max-w-full *:xl:max-w-[calc(50%-0.75rem)] *:w-full\">
  <div class=\"flex gap-3 flex-wrap\" style=\"display: ";
        // line 8
        if ((twig_length_filter($this->env, ($context["customer_groups"] ?? null)) < 2)) {
            echo " none ";
        }
        echo "\">
    ";
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["customer_groups"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["customer_group"]) {
            echo " 
      <div class=\"flex items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto max-w-max has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"customer_group_id\" type=\"radio\" 
          name=\"customer_group_id\" 
          value=\"";
            // line 13
            echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 13);
            echo "\" 
          ";
            // line 14
            if ((twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 14) == ($context["customer_group_id"] ?? null))) {
                echo " checked=\"checked\" ";
            }
            // line 15
            echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"customer_group_id\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">";
            // line 16
            echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "name", [], "any", false, false, false, 16);
            echo "</label>
      </div>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['customer_group'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo " 
  </div>

  ";
        // line 21
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = ($context["setting"] ?? null)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["fields"] ?? null) : null));
        foreach ($context['_seq'] as $context["_key"] => $context["field"]) {
            echo " 

    ";
            // line 23
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 23) == "firstname")) {
                echo " 
      <div class=\"group form-group relative\" id=\"customer-field-firstname\">
        <label for=\"customer-input-firstname\" class=\"block mb-2 text-sm font-medium\">";
                // line 25
                echo ($context["entry_firstname"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_firstname\" value=\"";
                // line 26
                echo ($context["firstname"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_firstname"] ?? null);
                echo "\" id=\"customer-input-firstname\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\" data-validation=\"";
                // line 28
                echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["field"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["validation"] ?? null) : null);
                echo "\">
      </div>
    ";
            }
            // line 30
            echo " 

    ";
            // line 32
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 32) == "lastname")) {
                echo " 

      <div class=\"group form-group relative\" id=\"customer-field-lastname\">
        <label for=\"customer-input-lastname\" class=\"block mb-2 text-sm font-medium\">";
                // line 35
                echo ($context["entry_lastname"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_lastname\" value=\"";
                // line 36
                echo ($context["lastname"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_lastname"] ?? null);
                echo "\" id=\"customer-input-lastname\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\" data-validation=\"";
                // line 38
                echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["field"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 41
            echo " 

    ";
            // line 43
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 43) == "email")) {
                echo " 

      <div class=\"group form-group relative\" id=\"customer-field-email\">
        <label for=\"customer-input-email\" class=\"block mb-2 text-sm font-medium\">";
                // line 46
                echo ($context["entry_email"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_email\" value=\"";
                // line 47
                echo ($context["email"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_email"] ?? null);
                echo "\" id=\"customer-input-email\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\" data-validation=\"";
                // line 49
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["field"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 52
            echo " 

    ";
            // line 54
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 54) == "telephone")) {
                echo " 

      <div class=\"group form-group relative\" id=\"customer-field-telephone\">
        <label for=\"customer-input-telephone\" class=\"block mb-2 text-sm font-medium\">";
                // line 57
                echo ($context["entry_telephone"] ?? null);
                echo "</label>
        <input type=\"text\" x-data x-mask=\"+9 (999) 999-99-99\" name=\"customer_telephone\" value=\"";
                // line 58
                echo ($context["telephone"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_telephone"] ?? null);
                echo "\" id=\"customer-input-telephone\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\" data-validation=\"";
                // line 60
                echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["field"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 63
            echo " 

    ";
            // line 65
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 65) == "fax")) {
                echo " 
      <div class=\"group form-group relative\" id=\"customer-field-fax\">
        <label for=\"customer-input-fax\" class=\"block mb-2 text-sm font-medium\">";
                // line 67
                echo ($context["entry_fax"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_fax\" value=\"";
                // line 68
                echo ($context["fax"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_fax"] ?? null);
                echo "\" id=\"customer-input-fax\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            group-has-[.text-danger]:text-red-600 group-has-[.text-danger]:border-red-600 peer\" data-validation=\"";
                // line 70
                echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["field"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 73
            echo " 

    ";
            // line 75
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 75) == "password")) {
                echo " 
      <div class=\"group form-group relative\" id=\"customer-field-password\">
        <label for=\"customer-input-password\" class=\"block mb-2 text-sm font-medium\">";
                // line 77
                echo ($context["entry_password"] ?? null);
                echo "</label>
        <input type=\"password\" name=\"customer_password\" value=\"";
                // line 78
                echo ($context["password"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_password"] ?? null);
                echo "\" id=\"customer-input-password\" autocomplete=\"none\" aria-autocomplete=\"inline\"
          class=\"block w-full p-2.5 bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg 
          focus:ring-lightGreen focus:border-darkGreen 
            [&.has-error]:focus:red-600 [&.has-error]:focus:border-red-600 
          [&.has-error]:text-red-600 peer\" data-validation=\"";
                // line 82
                echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["field"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 85
            echo " 

    ";
            // line 87
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 87) == "confirm")) {
                echo " 
      <div class=\"group form-group relative\" id=\"customer-field-confirm\">
        <label for=\"customer-input-confirm\" class=\"block mb-2 text-sm font-medium\">";
                // line 89
                echo ($context["entry_confirm"] ?? null);
                echo "</label>
        <input type=\"password\" name=\"customer_confirm\" value=\"";
                // line 90
                echo ($context["confirm"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_confirm"] ?? null);
                echo "\" id=\"customer-input-confirm\" autocomplete=\"none\" aria-autocomplete=\"inline\"
          class=\"block w-full p-2.5 bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg 
          focus:ring-lightGreen focus:border-darkGreen 
            [&.has-error]:focus:red-600 [&.has-error]:focus:border-red-600 
          [&.has-error]:text-red-600 peer\" data-validation=\"";
                // line 94
                echo (($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 = $context["field"]) && is_array($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52) || $__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 instanceof ArrayAccess ? ($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 97
            echo " 

    ";
            // line 99
            if ((twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 99), 0, 12) == "custom_field")) {
                echo " 

      ";
                // line 101
                $context["custom_field_id"] = twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 101), 12);
                echo " 

      ";
                // line 103
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
                    echo " 
      ";
                    // line 104
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 104) == ($context["custom_field_id"] ?? null))) {
                        echo " 
      
      ";
                        // line 106
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 106) == "select")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 107
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 107);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 107);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 108
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 108);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 108);
                            echo "</label>
        <select name=\"customer_custom_field";
                            // line 109
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109);
                            echo "\" class=\"form-control\">
          <option value=\"\">";
                            // line 110
                            echo ($context["text_select"] ?? null);
                            echo "</option>
          ";
                            // line 111
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 = $context["custom_field"]) && is_array($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136) || $__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 instanceof ArrayAccess ? ($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <option value=\"";
                                // line 112
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 112);
                                echo "\">";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 112);
                                echo "</option>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 113
                            echo " 
        </select>
      </div>
      ";
                        }
                        // line 116
                        echo " 
      ";
                        // line 117
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 117) == "radio")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 118
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 118);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 118);
                            echo "\">
        <label class=\"control-label\">";
                            // line 119
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 119);
                            echo "</label>
        <div id=\"input-custom-field";
                            // line 120
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 120);
                            echo "\">
          ";
                            // line 121
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 = $context["custom_field"]) && is_array($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386) || $__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 instanceof ArrayAccess ? ($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <div class=\"radio\">
            <label>
              <input type=\"radio\" name=\"customer_custom_field";
                                // line 124
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 124);
                                echo "\" value=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 124);
                                echo "\" />
              ";
                                // line 125
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 125);
                                echo "</label>
          </div>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 127
                            echo " 
        </div>
      </div>
      ";
                        }
                        // line 130
                        echo " 
      ";
                        // line 131
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 131) == "checkbox")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 132
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 132);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 132);
                            echo "\">
        <label class=\"control-label\">";
                            // line 133
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 133);
                            echo "</label>
        <div id=\"input-custom-field";
                            // line 134
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 134);
                            echo "\">
          ";
                            // line 135
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 = $context["custom_field"]) && is_array($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9) || $__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 instanceof ArrayAccess ? ($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <div class=\"checkbox\">
            <label>
              <input type=\"checkbox\" name=\"customer_custom_field";
                                // line 138
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 138);
                                echo "[]\" value=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 138);
                                echo "\" />
              ";
                                // line 139
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 139);
                                echo "</label>
          </div>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 141
                            echo " 
        </div>
      </div>
      ";
                        }
                        // line 144
                        echo " 
      ";
                        // line 145
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 145) == "text")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 146
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 146);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 146);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 147
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 147);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 147);
                            echo "</label>
        <input type=\"text\" name=\"customer_custom_field";
                            // line 148
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 148);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 148);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                            echo "\" class=\"form-control\" data-validation=\"";
                            echo (($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae = $context["field"]) && is_array($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae) || $__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae instanceof ArrayAccess ? ($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae["validation"] ?? null) : null);
                            echo "\" />
      </div>
      ";
                        }
                        // line 150
                        echo " 
      ";
                        // line 151
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 151) == "textarea")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 152
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 152);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 152);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 153
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 153);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 153);
                            echo "</label>
        <textarea name=\"customer_custom_field";
                            // line 154
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 154);
                            echo "\" rows=\"5\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 154);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 154);
                            echo "\" class=\"form-control\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 154);
                            echo "</textarea>
      </div>
      ";
                        }
                        // line 156
                        echo " 
      ";
                        // line 157
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 157) == "file")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 158
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 158);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 158);
                            echo "\">
        <label class=\"control-label\">";
                            // line 159
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 159);
                            echo "</label>
        <br />
        <button type=\"button\" id=\"button-custom-field";
                            // line 161
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 161);
                            echo "\" data-loading-text=\"";
                            echo ($context["text_loading"] ?? null);
                            echo "\" class=\"btn btn-default\"><i class=\"fa fa-upload\"></i> ";
                            echo ($context["button_upload"] ?? null);
                            echo "</button>
        <input type=\"hidden\" name=\"customer_custom_field";
                            // line 162
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 162);
                            echo "\" value=\"\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 162);
                            echo "\" />
      </div>
      ";
                        }
                        // line 164
                        echo " 
      ";
                        // line 165
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 165) == "date")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 166
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 166);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 166);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 167
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 167);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 167);
                            echo "</label>
        <div class=\"input-group date\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 169
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 169);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 169);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 169);
                            echo "\" data-date-format=\"YYYY-MM-DD\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 169);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 174
                        echo " 
      ";
                        // line 175
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 175) == "time")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 176
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 176);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 176);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 177
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 177);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 177);
                            echo "</label>
        <div class=\"input-group time\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 179
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 179);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 179);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 179);
                            echo "\" data-date-format=\"HH:mm\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 179);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 184
                        echo " 
      ";
                        // line 185
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 185) == "datetime")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 186
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 186);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 187
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 187);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 187);
                            echo "</label>
        <div class=\"input-group datetime\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 189
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 189);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 189);
                            echo "\" data-date-format=\"YYYY-MM-DD HH:mm\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 194
                        echo " 
      ";
                    }
                    // line 195
                    echo " 
      ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 196
                echo " 

    ";
            }
            // line 198
            echo " 

  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 200
        echo " 
</div>


<script><!--
\$('#custom-customer [name^=customer]').on('input', function() {
  \$(this).parent().find('.text-danger').remove();
  \$(this).parent().removeClass('has-error');
});
//--></script>

<script><!--
\$('#custom-customer input[name=\\'customer_group_id\\']').on('change', function() {

  // Customer
  custom_block.customer(this.value);

  // Payment Methods
  custom_block.payment(this.value);

});

\$('#custom-customer input[name=\\'customer_group_id\\']:checked').trigger('change');
//--></script>

<script><!--
\$('#custom-customer button[id^=\\'button-custom-field\\']').on('click', function() {
  var node = this;

  \$('#form-upload').remove();

  \$('body').prepend('<form enctype=\"multipart/form-data\" id=\"form-upload\" style=\"display: none;\"><input type=\"file\" name=\"file\" /></form>');

  \$('#form-upload input[name=\\'file\\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if (\$('#form-upload input[name=\\'file\\']').val() != '') {
      clearInterval(timer);

      \$.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData(\$('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {},
        complete: function() {},
        success: function(json) {
          \$('.text-danger').remove();

          if (json['error']) {
            \$(node).parent().find('input[name^=\\'custom_field\\']').after('<div class=\"text-danger\">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            \$(node).parent().find('input[name^=\\'custom_field\\']').val(json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
      });
    }
  }, 500);
});
//--></script>

";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom/customer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  687 => 200,  679 => 198,  674 => 196,  667 => 195,  663 => 194,  648 => 189,  641 => 187,  635 => 186,  631 => 185,  628 => 184,  613 => 179,  606 => 177,  600 => 176,  596 => 175,  593 => 174,  578 => 169,  571 => 167,  565 => 166,  561 => 165,  558 => 164,  550 => 162,  542 => 161,  537 => 159,  531 => 158,  527 => 157,  524 => 156,  512 => 154,  506 => 153,  500 => 152,  496 => 151,  493 => 150,  479 => 148,  473 => 147,  467 => 146,  463 => 145,  460 => 144,  454 => 141,  445 => 139,  439 => 138,  431 => 135,  427 => 134,  423 => 133,  417 => 132,  413 => 131,  410 => 130,  404 => 127,  395 => 125,  389 => 124,  381 => 121,  377 => 120,  373 => 119,  367 => 118,  363 => 117,  360 => 116,  354 => 113,  344 => 112,  338 => 111,  334 => 110,  328 => 109,  322 => 108,  316 => 107,  312 => 106,  307 => 104,  301 => 103,  296 => 101,  291 => 99,  287 => 97,  280 => 94,  271 => 90,  267 => 89,  262 => 87,  258 => 85,  251 => 82,  242 => 78,  238 => 77,  233 => 75,  229 => 73,  222 => 70,  215 => 68,  211 => 67,  206 => 65,  202 => 63,  195 => 60,  188 => 58,  184 => 57,  178 => 54,  174 => 52,  167 => 49,  160 => 47,  156 => 46,  150 => 43,  146 => 41,  139 => 38,  132 => 36,  128 => 35,  122 => 32,  118 => 30,  112 => 28,  105 => 26,  101 => 25,  96 => 23,  89 => 21,  84 => 18,  75 => 16,  72 => 15,  68 => 14,  64 => 13,  55 => 9,  49 => 8,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/customer.twig", "");
    }
}

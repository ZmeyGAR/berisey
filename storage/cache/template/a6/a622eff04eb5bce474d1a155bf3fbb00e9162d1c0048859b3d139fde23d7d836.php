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
class __TwigTemplate_ad602b8aae5a746dfdd9b89553753668e934d5468da7f4b660e72477309312b6 extends \Twig\Template
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
<div class=\"flex flex-wrap gap-x-3 *:xl-mobile:max-w-[calc(50%-0.75rem)] *:sm-notebook:max-w-full *:xl:max-w-[calc(50%-0.75rem)] *:w-full\">
  <div class=\"flex gap-3 flex-wrap\" style=\"display: ";
        // line 6
        if ((twig_length_filter($this->env, ($context["customer_groups"] ?? null)) < 2)) {
            echo " none ";
        }
        echo "\">
    ";
        // line 7
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["customer_groups"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["customer_group"]) {
            echo " 
      <div class=\"flex items-center ps-4 border border-gray-200 rounded-lg w-full flex-auto max-w-max has-[:checked]:border-darkGreen has-[:checked]:focus:ring-darkGreen\">
        <input id=\"customer_group_id\" type=\"radio\" 
          name=\"customer_group_id\" 
          value=\"";
            // line 11
            echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 11);
            echo "\" 
          ";
            // line 12
            if ((twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 12) == ($context["customer_group_id"] ?? null))) {
                echo " checked=\"checked\" ";
            }
            // line 13
            echo "          class=\"w-4 h-4 text-lightGreen bg-lightBlue border-lightGreen focus:ring-darkGreen\">
        <label for=\"customer_group_id\" class=\"w-full p-4 pl-0 ms-2 text-sm font-medium text-lightBlack\">";
            // line 14
            echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "name", [], "any", false, false, false, 14);
            echo "</label>
      </div>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['customer_group'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo " 
  </div>

  ";
        // line 19
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = ($context["setting"] ?? null)) && is_array($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) || $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 instanceof ArrayAccess ? ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4["fields"] ?? null) : null));
        foreach ($context['_seq'] as $context["_key"] => $context["field"]) {
            echo " 

    ";
            // line 21
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 21) == "firstname")) {
                echo " 
      <div class=\"group form-group\" id=\"customer-field-firstname\">
        <label for=\"customer-input-firstname\" class=\"block mb-2 text-sm font-medium\">";
                // line 23
                echo ($context["entry_firstname"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_firstname\" value=\"";
                // line 24
                echo ($context["firstname"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_firstname"] ?? null);
                echo "\" id=\"customer-input-firstname\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            [&.has-error]:text-red-600 [&.has-error]:border-red-600 peer\" data-validation=\"";
                // line 26
                echo (($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = $context["field"]) && is_array($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) || $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 instanceof ArrayAccess ? ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144["validation"] ?? null) : null);
                echo "\">
      </div>
    ";
            }
            // line 28
            echo " 

    ";
            // line 30
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 30) == "lastname")) {
                echo " 

      <div class=\"group form-group\" id=\"customer-field-lastname\">
        <label for=\"customer-input-lastname\" class=\"block mb-2 text-sm font-medium\">";
                // line 33
                echo ($context["entry_lastname"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_lastname\" value=\"";
                // line 34
                echo ($context["lastname"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_lastname"] ?? null);
                echo "\" id=\"customer-input-lastname\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            [&.has-error]:text-red-600 [&.has-error]:border-red-600 peer\" data-validation=\"";
                // line 36
                echo (($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b = $context["field"]) && is_array($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b) || $__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b instanceof ArrayAccess ? ($__internal_1cfccaec8dd2e8578ccb026fbe7f2e7e29ac2ed5deb976639c5fc99a6ea8583b["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 39
            echo " 

    ";
            // line 41
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 41) == "email")) {
                echo " 

      <div class=\"group form-group\" id=\"customer-field-email\">
        <label for=\"customer-input-email\" class=\"block mb-2 text-sm font-medium\">";
                // line 44
                echo ($context["entry_email"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_email\" value=\"";
                // line 45
                echo ($context["email"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_email"] ?? null);
                echo "\" id=\"customer-input-email\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            [&.has-error]:text-red-600 [&.has-error]:border-red-600 peer\" data-validation=\"";
                // line 47
                echo (($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 = $context["field"]) && is_array($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002) || $__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002 instanceof ArrayAccess ? ($__internal_68aa442c1d43d3410ea8f958ba9090f3eaa9a76f8de8fc9be4d6c7389ba28002["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 50
            echo " 

    ";
            // line 52
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 52) == "telephone")) {
                echo " 

      <div class=\"group form-group\" id=\"customer-field-telephone\">
        <label for=\"customer-input-telephone\" class=\"block mb-2 text-sm font-medium\">";
                // line 55
                echo ($context["entry_telephone"] ?? null);
                echo "</label>
        <input type=\"text\" x-data x-mask=\"+9 (999) 999-99-99\" name=\"customer_telephone\" value=\"";
                // line 56
                echo ($context["telephone"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_telephone"] ?? null);
                echo "\" id=\"customer-input-telephone\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            [&.has-error]:text-red-600 [&.has-error]:border-red-600 peer\" data-validation=\"";
                // line 58
                echo (($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 = $context["field"]) && is_array($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4) || $__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4 instanceof ArrayAccess ? ($__internal_d7fc55f1a54b629533d60b43063289db62e68921ee7a5f8de562bd9d4a2b7ad4["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 61
            echo " 

    ";
            // line 63
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 63) == "fax")) {
                echo " 
      <div class=\"group form-group\" id=\"customer-field-fax\">
        <label for=\"customer-input-fax\" class=\"block mb-2 text-sm font-medium\">";
                // line 65
                echo ($context["entry_fax"] ?? null);
                echo "</label>
        <input type=\"text\" name=\"customer_fax\" value=\"";
                // line 66
                echo ($context["fax"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_fax"] ?? null);
                echo "\" id=\"customer-input-fax\"
          class=\"bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg focus:ring-lightGreen focus:border-darkGreen block w-full p-2.5
            [&.has-error]:text-red-600 [&.has-error]:border-red-600 peer\" data-validation=\"";
                // line 68
                echo (($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 = $context["field"]) && is_array($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666) || $__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666 instanceof ArrayAccess ? ($__internal_01476f8db28655ee4ee02ea2d17dd5a92599be76304f08cd8bc0e05aced30666["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 71
            echo " 

    ";
            // line 73
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 73) == "password")) {
                echo " 
      <div class=\"group form-group\" id=\"customer-field-password\">
        <label for=\"customer-input-password\" class=\"block mb-2 text-sm font-medium\">";
                // line 75
                echo ($context["entry_password"] ?? null);
                echo "</label>
        <input type=\"password\" name=\"customer_password\" value=\"";
                // line 76
                echo ($context["password"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_password"] ?? null);
                echo "\" id=\"customer-input-password\" autocomplete=\"none\" aria-autocomplete=\"inline\"
          class=\"block w-full p-2.5 bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg 
          focus:ring-lightGreen focus:border-darkGreen 
            [&.has-error]:focus:red-600 [&.has-error]:focus:border-red-600 
          [&.has-error]:text-red-600 peer\" data-validation=\"";
                // line 80
                echo (($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e = $context["field"]) && is_array($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e) || $__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e instanceof ArrayAccess ? ($__internal_01c35b74bd85735098add188b3f8372ba465b232ab8298cb582c60f493d3c22e["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 83
            echo " 

    ";
            // line 85
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 85) == "confirm")) {
                echo " 
      <div class=\"group form-group\" id=\"customer-field-confirm\">
        <label for=\"customer-input-confirm\" class=\"block mb-2 text-sm font-medium\">";
                // line 87
                echo ($context["entry_confirm"] ?? null);
                echo "</label>
        <input type=\"confirm\" name=\"customer_confirm\" value=\"";
                // line 88
                echo ($context["confirm"] ?? null);
                echo "\" placeholder=\"";
                echo ($context["entry_confirm"] ?? null);
                echo "\" id=\"customer-input-confirm\" autocomplete=\"none\" aria-autocomplete=\"inline\"
          class=\"block w-full p-2.5 bg-white border border-lightGreen text-lightBlack placeholder-lightBlack text-sm rounded-lg 
          focus:ring-lightGreen focus:border-darkGreen 
            [&.has-error]:focus:red-600 [&.has-error]:focus:border-red-600 
          [&.has-error]:text-red-600 peer\" data-validation=\"";
                // line 92
                echo (($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 = $context["field"]) && is_array($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52) || $__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52 instanceof ArrayAccess ? ($__internal_63ad1f9a2bf4db4af64b010785e9665558fdcac0e8db8b5b413ed986c62dbb52["validation"] ?? null) : null);
                echo "\">
      </div>

    ";
            }
            // line 95
            echo " 

    ";
            // line 97
            if ((twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 97), 0, 12) == "custom_field")) {
                echo " 

      ";
                // line 99
                $context["custom_field_id"] = twig_slice($this->env, twig_get_attribute($this->env, $this->source, $context["field"], "name", [], "any", false, false, false, 99), 12);
                echo " 

      ";
                // line 101
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
                    echo " 
      ";
                    // line 102
                    if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 102) == ($context["custom_field_id"] ?? null))) {
                        echo " 
      
      ";
                        // line 104
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 104) == "select")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 105
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 105);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 105);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 106
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 106);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 106);
                            echo "</label>
        <select name=\"customer_custom_field";
                            // line 107
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 107);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 107);
                            echo "\" class=\"form-control\">
          <option value=\"\">";
                            // line 108
                            echo ($context["text_select"] ?? null);
                            echo "</option>
          ";
                            // line 109
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 = $context["custom_field"]) && is_array($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136) || $__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136 instanceof ArrayAccess ? ($__internal_f10a4cc339617934220127f034125576ed229e948660ebac906a15846d52f136["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <option value=\"";
                                // line 110
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 110);
                                echo "\">";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 110);
                                echo "</option>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 111
                            echo " 
        </select>
      </div>
      ";
                        }
                        // line 114
                        echo " 
      ";
                        // line 115
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 115) == "radio")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 116
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 116);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 116);
                            echo "\">
        <label class=\"control-label\">";
                            // line 117
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 117);
                            echo "</label>
        <div id=\"input-custom-field";
                            // line 118
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 118);
                            echo "\">
          ";
                            // line 119
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 = $context["custom_field"]) && is_array($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386) || $__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386 instanceof ArrayAccess ? ($__internal_887a873a4dc3cf8bd4f99c487b4c7727999c350cc3a772414714e49a195e4386["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <div class=\"radio\">
            <label>
              <input type=\"radio\" name=\"customer_custom_field";
                                // line 122
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 122);
                                echo "\" value=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 122);
                                echo "\" />
              ";
                                // line 123
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 123);
                                echo "</label>
          </div>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 125
                            echo " 
        </div>
      </div>
      ";
                        }
                        // line 128
                        echo " 
      ";
                        // line 129
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 129) == "checkbox")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 130
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 130);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 130);
                            echo "\">
        <label class=\"control-label\">";
                            // line 131
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 131);
                            echo "</label>
        <div id=\"input-custom-field";
                            // line 132
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 132);
                            echo "\">
          ";
                            // line 133
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable((($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 = $context["custom_field"]) && is_array($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9) || $__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9 instanceof ArrayAccess ? ($__internal_d527c24a729d38501d770b40a0d25e1ce8a7f0bff897cc4f8f449ba71fcff3d9["custom_field_value"] ?? null) : null));
                            foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                                echo " 
          <div class=\"checkbox\">
            <label>
              <input type=\"checkbox\" name=\"customer_custom_field";
                                // line 136
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 136);
                                echo "[]\" value=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 136);
                                echo "\" />
              ";
                                // line 137
                                echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 137);
                                echo "</label>
          </div>
          ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 139
                            echo " 
        </div>
      </div>
      ";
                        }
                        // line 142
                        echo " 
      ";
                        // line 143
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 143) == "text")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 144
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 144);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 144);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 145
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 145);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 145);
                            echo "</label>
        <input type=\"text\" name=\"customer_custom_field";
                            // line 146
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 146);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 146);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 146);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 146);
                            echo "\" class=\"form-control\" data-validation=\"";
                            echo (($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae = $context["field"]) && is_array($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae) || $__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae instanceof ArrayAccess ? ($__internal_f6dde3a1020453fdf35e718e94f93ce8eb8803b28cc77a665308e14bbe8572ae["validation"] ?? null) : null);
                            echo "\" />
      </div>
      ";
                        }
                        // line 148
                        echo " 
      ";
                        // line 149
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 149) == "textarea")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 150
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 150);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 150);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 151
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 151);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 151);
                            echo "</label>
        <textarea name=\"customer_custom_field";
                            // line 152
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 152);
                            echo "\" rows=\"5\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 152);
                            echo "\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 152);
                            echo "\" class=\"form-control\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 152);
                            echo "</textarea>
      </div>
      ";
                        }
                        // line 154
                        echo " 
      ";
                        // line 155
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 155) == "file")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 156
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 156);
                            echo "\">
        <label class=\"control-label\">";
                            // line 157
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 157);
                            echo "</label>
        <br />
        <button type=\"button\" id=\"button-custom-field";
                            // line 159
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 159);
                            echo "\" data-loading-text=\"";
                            echo ($context["text_loading"] ?? null);
                            echo "\" class=\"btn btn-default\"><i class=\"fa fa-upload\"></i> ";
                            echo ($context["button_upload"] ?? null);
                            echo "</button>
        <input type=\"hidden\" name=\"customer_custom_field";
                            // line 160
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                            echo "\" value=\"\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                            echo "\" />
      </div>
      ";
                        }
                        // line 162
                        echo " 
      ";
                        // line 163
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 163) == "date")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 164
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 164);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 165
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 165);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 165);
                            echo "</label>
        <div class=\"input-group date\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 167
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 167);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 167);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 167);
                            echo "\" data-date-format=\"YYYY-MM-DD\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 167);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 172
                        echo " 
      ";
                        // line 173
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 173) == "time")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 174
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 174);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 174);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 175
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 175);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 175);
                            echo "</label>
        <div class=\"input-group time\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 177
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 177);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 177);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 177);
                            echo "\" data-date-format=\"HH:mm\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 177);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 182
                        echo " 
      ";
                        // line 183
                        if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 183) == "datetime")) {
                            echo " 
      <div id=\"customer-field-custom-field";
                            // line 184
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 184);
                            echo "\" class=\"form-group custom-field\" data-sort=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "sort_order", [], "any", false, false, false, 184);
                            echo "\">
        <label class=\"control-label\" for=\"input-custom-field";
                            // line 185
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 185);
                            echo "\">";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 185);
                            echo "</label>
        <div class=\"input-group datetime\">
          <input type=\"text\" name=\"customer_custom_field";
                            // line 187
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 187);
                            echo "\" value=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 187);
                            echo "\" placeholder=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 187);
                            echo "\" data-date-format=\"YYYY-MM-DD HH:mm\" id=\"input-custom-field";
                            echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 187);
                            echo "\" class=\"form-control\" />
          <span class=\"input-group-btn\">
          <button type=\"button\" class=\"btn btn-default\"><i class=\"fa fa-calendar\"></i></button>
          </span></div>
      </div>
      ";
                        }
                        // line 192
                        echo " 
      ";
                    }
                    // line 193
                    echo " 
      ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 194
                echo " 

    ";
            }
            // line 196
            echo " 

  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 198
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
        return array (  685 => 198,  677 => 196,  672 => 194,  665 => 193,  661 => 192,  646 => 187,  639 => 185,  633 => 184,  629 => 183,  626 => 182,  611 => 177,  604 => 175,  598 => 174,  594 => 173,  591 => 172,  576 => 167,  569 => 165,  563 => 164,  559 => 163,  556 => 162,  548 => 160,  540 => 159,  535 => 157,  529 => 156,  525 => 155,  522 => 154,  510 => 152,  504 => 151,  498 => 150,  494 => 149,  491 => 148,  477 => 146,  471 => 145,  465 => 144,  461 => 143,  458 => 142,  452 => 139,  443 => 137,  437 => 136,  429 => 133,  425 => 132,  421 => 131,  415 => 130,  411 => 129,  408 => 128,  402 => 125,  393 => 123,  387 => 122,  379 => 119,  375 => 118,  371 => 117,  365 => 116,  361 => 115,  358 => 114,  352 => 111,  342 => 110,  336 => 109,  332 => 108,  326 => 107,  320 => 106,  314 => 105,  310 => 104,  305 => 102,  299 => 101,  294 => 99,  289 => 97,  285 => 95,  278 => 92,  269 => 88,  265 => 87,  260 => 85,  256 => 83,  249 => 80,  240 => 76,  236 => 75,  231 => 73,  227 => 71,  220 => 68,  213 => 66,  209 => 65,  204 => 63,  200 => 61,  193 => 58,  186 => 56,  182 => 55,  176 => 52,  172 => 50,  165 => 47,  158 => 45,  154 => 44,  148 => 41,  144 => 39,  137 => 36,  130 => 34,  126 => 33,  120 => 30,  116 => 28,  110 => 26,  103 => 24,  99 => 23,  94 => 21,  87 => 19,  82 => 16,  73 => 14,  70 => 13,  66 => 12,  62 => 11,  53 => 7,  47 => 6,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom/customer.twig", "");
    }
}

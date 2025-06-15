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

/* berisey/template/extension/module/custom.twig */
class __TwigTemplate_d740dccaa4cb749480f9805910024eb6de7993238f56216daca1c105aa82848d extends \Twig\Template
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
        echo ($context["header"] ?? null);
        echo " 

<main id=\"checkout-checkout\" class=\"relative z-30 max-w-full md:px-3 mb-16\">
    <div class=\"main-container max-w-screen-xl-monitor mx-auto grid main-bg-linear\">

        ";
        // line 6
        if (($context["breadcrumbs"] ?? null)) {
            // line 7
            echo "        <nav class=\"breadcrumb-list flex justify-start pt-6 px-8\" aria-label=\"Breadcrumb\">
            <ol class=\"inline-flex flex-wrap\">
            ";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
                // line 10
                echo "                <li class=\"inline-flex items-start justify-end group/breadcrump-item before:block before:content-['\\\\'] before:px-2 first:before:content-none before:text-textGray\">
                <a href=\"";
                // line 11
                echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 11);
                echo "\" class=\"inline-flex items-center text-textGray min-h-6 hover:text-darkGreen group-last/breadcrump-item:hover:text-textGray group-last/breadcrump-item:pointer-events-none\">
                    <svg class=\"w-4 h-4 me-2 hidden group-first/breadcrump-item:block\" aria-hidden=\"true\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"currentColor\" viewBox=\"0 0 20 20\">
                    <path d=\"m19.707 9.293-2-2-7-7a1 1 0 0 0-1.414 0l-7 7-2 2a1 1 0 0 0 1.414 1.414L2 10.414V18a2 2 0 0 0 2 2h3a1 1 0 0 0 1-1v-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v4a1 1 0 0 0 1 1h3a2 2 0 0 0 2-2v-7.586l.293.293a1 1 0 0 0 1.414-1.414Z\"/>
                    </svg>
                    <span class=\"ms-1 text-sm font-medium group-last/breadcrump-item:font-semibold group-last/breadcrump-item:text-lightBlack group-last/breadcrump-item:pb-1 grid\">
                    <span class=\"breadcrump-text\">";
                // line 16
                echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 16);
                echo "</span>
                    </span>
                </a>
                </li>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 21
            echo "
            </ol>
        </nav>
        ";
        }
        // line 25
        echo "
\t\t";
        // line 26
        echo ($context["content_top"] ?? null);
        echo "

        <section class=\"w-full pt-8\">
            <div class=\"grid grid-cols-1 sm-notebook:grid-cols-[3fr_minmax(320px,_1fr)] gap-8\">

                <div id=\"content\" class=\"w-full bg-white rounded-3xl p-8 px-2 xl-mobile:px-6 grid gap-12\">

                    <h1 class=\"block text-lightBlack text-xl font-bold sm-mobile:text-2xl xl-notebook:text-5xl last:pb-0\">
                        <span class=\"line-clamp-2\">";
        // line 34
        echo ($context["page_title"] ?? null);
        echo "</span>
                    </h1>

                    ";
        // line 37
        if (($context["errors"] ?? null)) {
            // line 38
            echo "\t\t\t\t\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["errors"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["error"]) {
                // line 39
                echo "\t\t\t\t\t\t\t<div id=\"checkout-alert\" class=\"flex items-center p-4 mb-4 text-red-800 rounded-lg bg-red-50\" role=\"alert\">
\t\t\t\t\t\t\t\t<svg class=\"w-5 h-5 shrink-0\" aria-hidden=\"true\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"currentColor\" viewBox=\"0 0 20 20\">
\t\t\t\t\t\t\t\t\t<path d=\"M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM10 15a1 1 0 1 1 0-2 1 1 0 0 1 0 2Zm1-4a1 1 0 0 1-2 0V6a1 1 0 0 1 2 0v5Z\"/>
\t\t\t\t\t\t\t\t</svg>
\t\t\t\t\t\t\t\t<span class=\"sr-only\">Информация</span>
\t\t\t\t\t\t\t\t<div class=\"ms-3 text-sm font-medium alert-message\">";
                // line 44
                echo $context["error"];
                echo "</div>
\t\t\t\t\t\t\t\t<button type=\"button\" 
\t\t\t\t\t\t\t\t\tclass=\"ms-auto -mx-1.5 -my-1.5 bg-red-50 text-red-500 rounded-lg focus:ring-2 focus:ring-red-400 p-1.5 hover:bg-red-200 inline-flex items-center justify-center h-8 w-8\" 
\t\t\t\t\t\t\t\t\tdata-dismiss-target=\"#checkout-alert\" 
\t\t\t\t\t\t\t\t\taria-label=\"Close\">
\t\t\t\t\t\t\t\t\t<span class=\"sr-only\">Закрыть</span>
\t\t\t\t\t\t\t\t\t<svg class=\"w-3 h-3\" aria-hidden=\"true\" xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 14 14\">
\t\t\t\t\t\t\t\t\t<path stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6\"/>
\t\t\t\t\t\t\t\t\t</svg>
\t\t\t\t\t\t\t\t</button>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['error'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 56
            echo "\t\t\t\t\t";
        } elseif (($context["empty"] ?? null)) {
            // line 57
            echo "\t\t\t\t\t\t<div class=\"alert alert-info\">";
            echo ($context["empty"] ?? null);
            echo "</div>
                    ";
        }
        // line 59
        echo "

\t\t\t\t\t<div class=\"relative\" id=\"custom-cart\">
\t\t\t\t\t\t";
        // line 62
        echo ($context["cart"] ?? null);
        echo "
\t\t\t\t\t</div>

                    ";
        // line 83
        echo "
                    <div class=\"flex gap-3\">

                        <div id=\"checkout-tab-content\" class=\"flex-auto w-full grid grid-cols-1 md:grid-cols-2 gap-3\">


                            <div class=\"col-span-full flex flex-wrap gap-3\">
                                ";
        // line 90
        if ((($context["login"] ?? null) &&  !($context["logged"] ?? null))) {
            echo " 
                                    <div id=\"custom-login\" x-data x-transition class=\"group max-w-full w-full shrink-0 has-[form.hidden]:md:max-w-max md:h-full\">
                                        ";
            // line 92
            echo ($context["login"] ?? null);
            echo "
                                    </div>
                                ";
        }
        // line 94
        echo " 
                                ";
        // line 95
        if ((($context["customer"] ?? null) &&  !($context["logged"] ?? null))) {
            // line 96
            echo "                                    <div id=\"custom-customer\" x-data x-transition  class=\"p-4 rounded-lg bg-lightBlue flex flex-col h-max flex-1 md:h-full\">
                                        ";
            // line 97
            echo ($context["customer"] ?? null);
            echo "
                                    </div>
                                ";
        }
        // line 99
        echo " 
                            </div>
                            
                            ";
        // line 102
        if ((($context["shipping"] ?? null) && (($context["shipping"] ?? null) != twig_constant("false")))) {
            echo " 
                                <div id=\"custom-shipping\" x-data x-transition class=\"col-span-full\" >
                                    ";
            // line 104
            echo ($context["shipping"] ?? null);
            echo "
                                </div>
                            ";
        }
        // line 106
        echo " 

                            <div class=\"flex flex-1 flex-wrap gap-3 h-full md:flex-nowrap w-full col-span-full\">
                                ";
        // line 109
        if (($context["payment"] ?? null)) {
            echo " 
                                    <div id=\"custom-payment\" x-data x-transition  class=\"p-4 rounded-lg bg-lightBlue flex flex-col h-max min-w-80 w-full md:max-w-80 md:h-full\">
                                        ";
            // line 111
            echo ($context["payment"] ?? null);
            echo "
                                    </div>
                                ";
        }
        // line 113
        echo "\t
                                ";
        // line 114
        if ((($context["comment"] ?? null) && (($context["comment"] ?? null) != twig_constant("false")))) {
            echo " 
                                    <div id=\"custom-comment\" x-data x-transition  class=\"p-4 rounded-lg bg-lightBlue flex flex-col h-max md:h-full max-w-full w-full flex-1\">
                                        ";
            // line 116
            echo ($context["comment"] ?? null);
            echo "
                                    </div>
                                ";
        }
        // line 118
        echo " 
                            </div>

                        </div>
                    </div>

                </div>

                <aside>
\t\t\t\t\t<div class=\"sticky top-48 gap-6 bg-white rounded-3xl p-6 py-8\">
                        <div class=\"flex flex-col max-w-96 mx-auto\">
                            ";
        // line 129
        if (($context["total"] ?? null)) {
            echo " 
                                <div id=\"custom-total\">";
            // line 130
            echo ($context["total"] ?? null);
            echo "</div>
                            ";
        }
        // line 132
        echo "                            ";
        if (($context["payment"] ?? null)) {
            echo " 
                                <div class=\"flex items-start sm:items-center\" id=\"custom-control\">
                                    <div class=\"alert-target\"></div>
                                    ";
            // line 135
            if (($context["text_agree"] ?? null)) {
                echo " 
                                        <input id=\"input-agree\" type=\"checkbox\" name=\"agree\" value=\"1\" ";
                // line 136
                if (($context["agree"] ?? null)) {
                    echo " checked=\"checked\" ";
                }
                echo " class=\"h-4 w-4 rounded border-darkGreen bg-lightBlue text-darkGreen focus:ring-2 focus:ring-darkGreen\" />
                                        <label for=\"input-agree\" class=\"ms-2 text-sm font-medium text-gray-900\">";
                // line 137
                echo ($context["text_agree"] ?? null);
                echo "</label>
                                    ";
            }
            // line 139
            echo "                                </div>
                                

                                <div class=\"flex flex-col gap-3\">

                                    <button type=\"button\" id=\"button-custom-order\" 
                                        class=\"mt-4 flex w-full items-center justify-center rounded-lg bg-lightGreen px-5 py-2.5 text-xl font-medium text-white
                                        hover:bg-darkGreen focus:outline-none focus:ring-4 focus:ring-darkGreen\">
                                        ";
            // line 147
            echo ($context["button_continue"] ?? null);
            echo "
                                    </button>

                                    <p class=\"flex w-full justify-center border-t border-t-lightGray/20 mt-3\">
                                        <span class=\"max-w-max px-2 -mt-3 bg-white text-xs text-lightGray\">или</span>
                                    </p>

                                    <button type=\"button\" 
                                        onclick=\"document.location = '";
            // line 155
            echo ($context["back_to_shopping_action"] ?? null);
            echo "'\"
                                        class=\"w-full flex gap-1.5 justify-center items-center rounded-lg border border-lightGray/20 bg-white px-5 py-2.5 text-sm font-medium text-lightBlack hover:bg-lightBlue focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100 \">
                                        <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"lightGray\" class=\"size-6\">
                                            <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M6.75 15.75 3 12m0 0 3.75-3.75M3 12h18\" />
                                        </svg>
                                        ";
            // line 160
            echo ($context["back_to_shopping"] ?? null);
            echo "
                                    </button>
                                </div>
                            ";
        }
        // line 164
        echo "                        </div>
\t\t\t\t\t</div>

                </aside>

            </div>
        </section>
    </div>

\t<div id=\"custom-confirm\" style=\"display: none;\">
        <div class=\"alert-target\"></div>
        <div class=\"flex body\"></div>
    </div>

\t";
        // line 178
        if (($context["content_bottom"] ?? null)) {
            // line 179
            echo "\t\t<div class=\"main-container has-section-divided max-w-screen-xl-monitor mx-auto grid main-bg-linear gap-36 pt-11 *:-my-11\">
\t\t\t\t";
            // line 180
            echo ($context["content_bottom"] ?? null);
            echo "
\t\t</div>
\t";
        }
        // line 183
        echo "</div>

<script>
\t
\t\$(document).ready(function() {

\t\t\$('#button-custom-order').on('click', function(){

\t\t\t";
        // line 191
        if ( !($context["logged"] ?? null)) {
            echo " 

\t\t\t\t\tcheckoutCustomer()
\t\t\t\t\t\t";
            // line 194
            if ((array_key_exists("login", $context) && (($context["login"] ?? null) != twig_constant("false")))) {
                echo " 
\t\t\t\t\t\t\t.then( checkoutLogin )
\t\t\t\t\t\t";
            }
            // line 196
            echo " 
\t\t\t\t\t\t";
            // line 197
            if ((array_key_exists("shipping", $context) && (($context["shipping"] ?? null) != twig_constant("false")))) {
                echo " 
\t\t\t\t\t\t\t.then( checkoutShipping )
\t\t\t\t\t\t";
            }
            // line 199
            echo " 
\t\t\t\t\t\t\t.then( checkoutPayment )
\t\t\t\t\t\t";
            // line 201
            if ((array_key_exists("comment", $context) && (($context["comment"] ?? null) != twig_constant("false")))) {
                echo " 
\t\t\t\t\t\t\t.then( checkoutComment )
\t\t\t\t\t\t";
            }
            // line 203
            echo " 
\t\t\t\t\t\t\t.then( checkoutConfirm )
\t\t\t\t\t\t\t.catch( failureCallback );

\t\t\t";
        } else {
            // line 207
            echo " 

\t\t\t\t";
            // line 209
            if ((array_key_exists("shipping", $context) && (($context["shipping"] ?? null) != twig_constant("false")))) {
                echo " 

\t\t\t\t\tcheckoutShipping()
\t\t\t\t\t\t.then( checkoutPayment )
\t\t\t\t\t\t";
                // line 213
                if ((array_key_exists("comment", $context) && (($context["comment"] ?? null) != twig_constant("false")))) {
                    echo " 
\t\t\t\t\t\t\t.then( checkoutComment )
\t\t\t\t\t\t";
                }
                // line 215
                echo " 
\t\t\t\t\t\t.then( checkoutConfirm )
\t\t\t\t\t\t.catch( failureCallback );

\t\t\t\t";
            } else {
                // line 219
                echo " 

\t\t\t\t\tcheckoutPayment()
\t\t\t\t\t\t";
                // line 222
                if ((array_key_exists("comment", $context) && (($context["comment"] ?? null) != twig_constant("false")))) {
                    echo " 
\t\t\t\t\t\t\t\t.then( checkoutComment )
\t\t\t\t\t\t\t";
                }
                // line 224
                echo " 
\t\t\t\t\t\t\t.then( checkoutConfirm )
\t\t\t\t\t\t\t.catch( ailureCallback );


\t\t\t\t";
            }
            // line 229
            echo "\t

\t\t\t";
        }
        // line 231
        echo " 

\t\t});

\t});
  
</script>
";
    }

    public function getTemplateName()
    {
        return "berisey/template/extension/module/custom.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  438 => 231,  433 => 229,  425 => 224,  419 => 222,  414 => 219,  407 => 215,  401 => 213,  394 => 209,  390 => 207,  383 => 203,  377 => 201,  373 => 199,  367 => 197,  364 => 196,  358 => 194,  352 => 191,  342 => 183,  336 => 180,  333 => 179,  331 => 178,  315 => 164,  308 => 160,  300 => 155,  289 => 147,  279 => 139,  274 => 137,  268 => 136,  264 => 135,  257 => 132,  252 => 130,  248 => 129,  235 => 118,  229 => 116,  224 => 114,  221 => 113,  215 => 111,  210 => 109,  205 => 106,  199 => 104,  194 => 102,  189 => 99,  183 => 97,  180 => 96,  178 => 95,  175 => 94,  169 => 92,  164 => 90,  155 => 83,  149 => 62,  144 => 59,  138 => 57,  135 => 56,  117 => 44,  110 => 39,  105 => 38,  103 => 37,  97 => 34,  86 => 26,  83 => 25,  77 => 21,  66 => 16,  58 => 11,  55 => 10,  51 => 9,  47 => 7,  45 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/extension/module/custom.twig", "");
    }
}

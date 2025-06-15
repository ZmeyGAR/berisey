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

/* berisey/template/product/special.twig */
class __TwigTemplate_2a135b26a1ecb16095afa35ee24203886f5705260d08f0a78bab57fc54da6d39 extends \Twig\Template
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

<main id=\"product-search\" class=\"relative z-30 max-w-full md:px-3\">
  <div class=\"main-container max-w-screen-xl-monitor mx-auto grid main-bg-linear\">

    ";
        // line 6
        if (($context["breadcrumbs"] ?? null)) {
            // line 7
            echo "      <nav class=\"breadcrumb-list flex justify-start pt-6 px-8\" aria-label=\"Breadcrumb\">
        <ol class=\"inline-flex flex-wrap\">
          ";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
                // line 10
                echo "            <li class=\"inline-flex items-start justify-end group/breadcrump-item before:block before:content-['\\\\'] before:px-2 first:before:content-none before:text-textGray\">
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
    <section class=\"w-full py-8\">
      <div class=\"grid grid-cols-1 md:grid-cols-[minmax(250px,_1fr)_3fr] gap-8\">

        <aside class=\"hidden gap-6 bg-white rounded-3xl p-6 py-8 md:flex flex-col\">

          <form class=\"flex items-center w-full mx-auto\" method=\"GET\" action=\"";
        // line 31
        echo ($context["search_action"] ?? null);
        echo "\">
            <label for=\"voice-search\" class=\"sr-only\">";
        // line 32
        echo ($context["text_search"] ?? null);
        echo "</label>
            <div class=\"relative w-full\">
                <input type=\"text\" name=\"search\" class=\"block w-full rounded-xl border-none text-sm text-lightBlack md:h-12 placeholder-lightBlack focus:outline-none focus:shadow-none bg-disabledGray\" placeholder=\"Поиск по сайту...\">
                <button type=\"submit\" class=\"absolute inset-y-0 end-0 flex items-center pe-3\">
                  <svg class=\"w-4 h-4 md:w-6 md:h-6\" viewBox=\"0 0 25 26\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">
                    <path d=\"M19.6755 17.8723C20.7457 18.8472 21.7262 19.913 22.794 20.8908C23.4183 21.4631 24.0233 22.0592 24.5983 22.6798C25.1046 23.2258 25.1269 24.6244 24.6957 25.2491C24.6059 25.379 24.4633 25.4251 24.3383 25.4915C23.3573 26.0119 22.5371 25.9647 21.7227 25.1634C19.7588 23.2305 17.8056 21.2859 15.8594 19.3355C15.6622 19.138 15.5384 19.1613 15.3249 19.2971C14.6489 19.7271 13.9273 20.0622 13.1645 20.3267C12.7356 20.4753 12.2996 20.5616 11.8666 20.6775C10.9607 20.9194 10.0354 20.8885 9.12891 20.8197C7.20207 20.6741 5.47647 19.9381 3.93628 18.7895C2.7986 17.9416 1.92788 16.8595 1.2232 15.6352C0.649961 14.6393 0.294985 13.5641 0.107228 12.4476C-0.04415 11.545 -0.0177467 10.6225 0.0784783 9.70468C0.183504 8.70063 0.464552 7.75194 0.886417 6.8388C1.50425 5.50142 2.36089 4.34528 3.48449 3.38027C4.77649 2.27192 6.25859 1.54233 7.91847 1.18162C8.75516 0.999809 9.61004 0.919392 10.469 0.974751C10.939 1.00505 11.4072 1.07498 11.876 1.12684C11.896 1.12859 11.9159 1.13092 11.9359 1.13267C12.3689 1.25446 12.8078 1.35702 13.2331 1.50096C14.5838 1.95899 15.7954 2.65128 16.8252 3.64425C17.788 4.57313 18.5795 5.62496 19.1404 6.83647C19.4796 7.56954 19.716 8.3405 19.8504 9.1371C19.9624 9.80083 20.0475 10.4756 20.0147 11.1446C19.9677 12.091 19.8463 13.0274 19.5283 13.9406C19.2243 14.8135 18.8553 15.641 18.3208 16.3939C18.2492 16.4947 18.3055 16.532 18.3583 16.5838C18.6986 16.9178 19.0407 17.2493 19.3822 17.5821C19.4637 17.6951 19.5611 17.7924 19.6755 17.8723ZM10.2214 18.3449C11.0546 18.3705 11.9488 18.2009 12.8136 17.8606C13.2009 17.7085 13.5811 17.5395 13.9267 17.3128C14.6971 16.807 15.3577 16.1713 15.9744 15.4936C16.5341 14.8788 16.9742 14.1882 17.2165 13.3864C17.541 12.3124 17.724 11.2338 17.5815 10.0957C17.4518 9.05726 17.1713 8.07827 16.6403 7.19019C15.3407 5.01834 13.4039 3.77304 10.8762 3.484C9.38591 3.31384 7.966 3.60754 6.63821 4.30799C5.49055 4.91403 4.56409 5.75666 3.85003 6.83996C2.68536 8.60564 2.36617 10.5421 2.81209 12.5665C3.14418 14.0752 3.92983 15.384 5.11562 16.4195C6.54609 17.6695 8.19835 18.3623 10.222 18.3443L10.2214 18.3449Z\" fill=\"url(#current_linear_gradient)\"></path>
                  </svg>
                </button>
            </div>
          </form>

          <div class=\"flex flex-col gap-2\" x-data=\"{ expanded: false }\">
            <h3 class=\"text-lightBlack test-base font-semibold\">";
        // line 44
        echo ($context["title_category_plural"] ?? null);
        echo "</h3>
            <div class=\"scroll-dir-rtl nested-category-list pl-0\" :class=\"expanded || 'max-h-60 overflow-x-clip overflow-y-auto'\" x-transition>
              <ul class=\"font-medium text-base text-lightBlack\">
                ";
        // line 47
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories_list"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 48
            echo "                  <li>
                    <a href=\"";
            // line 49
            echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 49);
            echo "\" class=\"flex items-center px-2 p-2 pl-0 w-full transition duration-75 hover:bg-gray-50 [&.active]:bg-gray-50 ";
            if ((($context["current_category_id"] ?? null) == twig_get_attribute($this->env, $this->source, $context["category"], "id", [], "any", false, false, false, 49))) {
                echo " active ";
            }
            echo "\">
                      <span class=\"flex-1 text-left rtl:text-right whitespace-nowrap\"><span class=\"grid\"><span class=\"truncate\">";
            // line 50
            echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 50);
            echo "</span></span></span>
                    </a>
                    ";
            // line 52
            if (twig_get_attribute($this->env, $this->source, $context["category"], "has_childs", [], "any", false, false, false, 52)) {
                // line 53
                echo "                      <ul class=\"font-medium text-base text-lightBlack\">
                        ";
                // line 54
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 54));
                foreach ($context['_seq'] as $context["_key"] => $context["_category"]) {
                    // line 55
                    echo "                          <li>
                            <a href=\"";
                    // line 56
                    echo twig_get_attribute($this->env, $this->source, $context["_category"], "href", [], "any", false, false, false, 56);
                    echo "\" class=\"flex items-center px-2 p-2 pl-0 w-full transition duration-75 hover:bg-gray-50 [&.active]:bg-gray-50 ";
                    if ((($context["current_category_id"] ?? null) == twig_get_attribute($this->env, $this->source, $context["_category"], "id", [], "any", false, false, false, 56))) {
                        echo " active ";
                    }
                    echo "\">
                              <span class=\"flex-1 text-left rtl:text-right whitespace-nowrap\"><span class=\"grid\"><span class=\"truncate\">";
                    // line 57
                    echo twig_get_attribute($this->env, $this->source, $context["_category"], "name", [], "any", false, false, false, 57);
                    echo "</span></span></span>
                            </a>
                            ";
                    // line 59
                    if (twig_get_attribute($this->env, $this->source, $context["_category"], "has_childs", [], "any", false, false, false, 59)) {
                        // line 60
                        echo "                              <ul class=\"font-medium text-base text-lightBlack\">
                                ";
                        // line 61
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["_category"], "children", [], "any", false, false, false, 61));
                        foreach ($context['_seq'] as $context["_key"] => $context["__category"]) {
                            // line 62
                            echo "                                  <li>
                                    <a href=\"";
                            // line 63
                            echo twig_get_attribute($this->env, $this->source, $context["__category"], "href", [], "any", false, false, false, 63);
                            echo "\" class=\"flex items-center px-2 p-2 pl-0 w-full transition duration-75 hover:bg-gray-50 [&.active]:bg-gray-50 ";
                            if ((($context["current_category_id"] ?? null) == twig_get_attribute($this->env, $this->source, $context["__category"], "id", [], "any", false, false, false, 63))) {
                                echo " active ";
                            }
                            echo "\">
                                      <span class=\"flex-1 text-left rtl:text-right whitespace-nowrap\"><span class=\"grid\"><span class=\"truncate\">";
                            // line 64
                            echo twig_get_attribute($this->env, $this->source, $context["__category"], "name", [], "any", false, false, false, 64);
                            echo "</span></span></span>
                                    </a>
                                  </li>
                                ";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['__category'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 68
                        echo "                              </ul>
                            ";
                    }
                    // line 70
                    echo "                          </li>
                        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['_category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 72
                echo "                      </ul>
                    ";
            }
            // line 74
            echo "                  </li>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 76
        echo "              </ul>
            </div>
            <button class=\"w-max font-medium text-lightGreen hover:underline hover:text-darkGreen cursor-pointer\" @click=\"expanded = !expanded\">";
        // line 78
        echo ($context["button_expanded_all"] ?? null);
        echo "</button>
          </div>

        </aside>

        ";
        // line 83
        if (($context["products"] ?? null)) {
            // line 84
            echo "          <div class=\"w-full bg-white rounded-3xl p-8 px-2 xl-mobile:px-6 grid gap-24\">
            <div class=\"page-category-products\">

              <div class=\"flex\">
                <h2 class=\"block text-lightBlack text-xl font-bold pb-12 sm-mobile:text-2xl xl-notebook:text-5xl flex-auto\">
                  <span class=\"line-clamp-2\">";
            // line 89
            echo ($context["heading_title"] ?? null);
            echo "</span>
                </h2>
                <div>
                  <label for=\"sort\" class=\"sr-only\">Underline select</label>
                  <select id=\"sort\" onchange=\"location = this.value;\"
                    class=\"block py-2.5 px-0 w-full text-sm text-gray-500 bg-transparent border-0 border-b-2 border-gray-200 appearance-none focus:outline-none focus:ring-0 focus:border-gray-200 peer\">
                      ";
            // line 95
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 96
                echo "                        ";
                if ((twig_get_attribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 96) == sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    // line 97
                    echo "                          <option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 97);
                    echo "\" selected=\"selected\">";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 97);
                    echo "</option>
                        ";
                } else {
                    // line 99
                    echo "                          <option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 99);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 99);
                    echo "</option>
                        ";
                }
                // line 101
                echo "                      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sorts'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 102
            echo "                  </select>
                </div>
              </div>

              <ul class=\"grid grid-cols-2 gap-1 gap-y-12 xl-mobile:grid-cols-3 md:grid-cols-[repeat(2,minmax(145px,_1fr))] sm-notebook:grid-cols-[repeat(3,minmax(146px,_1fr))] sm-tablet:gap-3 sm-tablet:gap-y-12 md:gap-y-16\">
                ";
            // line 107
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 108
                echo "                  <li>
                    <div class=\"relative flex flex-col items-center gap-3 w-full min-w-36 max-w-full bg-lightBlue rounded-lg h-full group/product-item transition hover:shadow-lg\">
                      <!-- product image  -->
                      <div class=\"w-full\">
                        <a href=\"";
                // line 112
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 112);
                echo "\" class=\"block relative w-full pb-[100%] overflow-hidden rounded-t-lg\">
                          <img src=\"";
                // line 113
                echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 113);
                echo "\" class=\"block absolute top-0 left-0 right-0 w-full h-full transition transform-gpu group-hover/product-item:scale-110\" 
                            alt=\"";
                // line 114
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 114);
                echo "\" />
                        </a>
                      </div>
      
                      <!-- product image  -->
      
                      <div class=\"flex flex-col w-full gap-3 px-4 pb-6 xl-mobile:gap-5 md:pb-12\" >
      
                        <a href=\"";
                // line 122
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 122);
                echo "\">
                          <h5 class=\"text-xs font-semibold tracking-tighter text-lightBlack max-h-12 overflow-clip sm:text-base sm:max-h-[4.5rem]\" >
      
                            <!-- product price  -->
                            <span class=\"float-right font-bold sm:text-base lg:text-2xl\">
                              ";
                // line 127
                if (($context["special"] ?? null)) {
                    // line 128
                    echo "                                ";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 128);
                    echo "
                              ";
                } else {
                    // line 130
                    echo "                                ";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 130);
                    echo "
                              ";
                }
                // line 132
                echo "                            </span>
                            <!-- product price  -->
      
                            <!-- product name  -->
                            <span class=\"block w-full\">";
                // line 136
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 136);
                echo "</span>
                            <!-- product name  -->
                          </h5>
                        </a>

                        ";
                // line 141
                if (twig_get_attribute($this->env, $this->source, $context["product"], "attributes", [], "any", false, false, false, 141)) {
                    // line 142
                    echo "                          <!-- product attributes  -->
                          <ul class=\"grid grid-cols-1 gap-3 sm-mobile:grid-cols-2 text-xs sm-mobile:text-8px sm:text-10px md:text-xs lg:text-base\">
                            ";
                    // line 144
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "attributes", [], "any", false, false, false, 144));
                    foreach ($context['_seq'] as $context["_key"] => $context["attr"]) {
                        // line 145
                        echo "                              <li class=\"flex items-center\">
                                ";
                        // line 146
                        echo twig_get_attribute($this->env, $this->source, $context["attr"], "icon", [], "any", false, false, false, 146);
                        echo "
                                <span>";
                        // line 147
                        echo twig_get_attribute($this->env, $this->source, $context["attr"], "value", [], "any", false, false, false, 147);
                        echo "</span>
                              </li>
                            ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attr'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 150
                    echo "                          </ul>
                          <!-- product attributes  -->
                        ";
                }
                // line 153
                echo "                        
      
                      </div>
      
                      <!-- product actions  -->
                      <div class=\"absolute bottom-0 right-0 translate-y-1/2 -translate-x-2\">
                        <button type=\"button\" 
                          onclick=\"cart.add('";
                // line 160
                echo twig_get_attribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 160);
                echo "', '";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "minimum", [], "any", false, false, false, 160);
                echo "');\"
                          class=\"relative p-3 md:p-6 bg-white rounded-full shadow-sm group-hover/product-item:shadow-lg group/product-btn-cart transition hover:bg-gradient-to-r hover:from-lightGreen hover:to-darkGreen\">
                          <span class=\"absolute top-0 left-0 inline-flex h-full w-full transition group-hover/product-btn-cart:animate-ping rounded-full group-hover/product-btn-cart:bg-lightGreen opacity-75\"></span>
                          <svg class=\"w-5 h-5 fill-[url(#current_linear_gradient)] group-hover/product-btn-cart:fill-white transition\" viewBox=\"0 0 18 18\" xmlns=\"http://www.w3.org/2000/svg\">
                            <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M10.7999 0H7.19992V7.2H0V10.8H7.19992V18H10.7999V10.8H18V7.2H10.7999V0Z\"/>
                          </svg>
                        </button>
                      </div>
                      <!-- product actions  -->
      
                    </div>
                  </li>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 173
            echo "
              </ul>
            </div>

            <div class=\"flex flex-wrap gap-3 justify-between\">
              ";
            // line 178
            echo ($context["results"] ?? null);
            echo "
              ";
            // line 179
            echo ($context["pagination"] ?? null);
            echo "
            </div>

            <div class=\"text-sm *:pb-3\">
              ";
            // line 183
            echo ($context["description"] ?? null);
            echo "
            </div>

          </div>
        ";
        } else {
            // line 188
            echo "      
            <div class=\"w-full bg-white rounded-3xl p-8 px-2 xl-mobile:px-6 grid gap-24\">
              <div class=\"page-category-list\">
                  <h1 class=\"block text-lightBlack text-xl font-bold pb-12 sm-mobile:text-2xl xl-notebook:text-5xl\">
                    <span class=\"line-clamp-2\">";
            // line 192
            echo ($context["text_empty"] ?? null);
            echo "</span>
                  </h1>
              </div>
              <div class=\"page-category-products\">
                <ul class=\"grid grid-cols-2 gap-1 gap-y-12 xl-mobile:grid-cols-3 md:grid-cols-[repeat(2,minmax(145px,_1fr))] sm-notebook:grid-cols-[repeat(3,minmax(146px,_1fr))] sm-tablet:gap-3 sm-tablet:gap-y-12 md:gap-y-16\">
                  <!-- full catalog link -->
                  <li class=\"last:col-span-2 xl-mobile:last:col-span-1\">
                    <div class=\"relative flex flex-col items-center w-full min-w-36 rounded-lg border h-full py-6 xl-mobile:pt-0 xl-mobile:gap-3 group/product-item transition hover:shadow-lg\">

                      <p class=\"w-full text-lightBlack uppercase font-bold text-base sm-mobile:text-2xl xl-mobile:hidden content-center text-center\">";
            // line 201
            echo ($context["text_catalog_all"] ?? null);
            echo "</p>
                      <div class=\"w-full\">
                        <a href=\"";
            // line 203
            echo ($context["continue"] ?? null);
            echo "\" class=\"block relative w-full xl-mobile:pb-[100%]\">
                            <img src=\"/catalog/view/theme/berisey/image/products-wall.png\" 
                              class=\"block w-full h-full object-contain xl-mobile:absolute top-1/2 left-1/2 xl-mobile:-translate-x-1/2 xl-mobile:-translate-y-1/2 transition transform-gpu group-hover/product-item:rotate-12 group-hover/product-item:scale-110\" alt=\"";
            // line 205
            echo ($context["text_catalog"] ?? null);
            echo "\" />
                        </a>
                      </div>

                      <div class=\"flex flex-wrap w-full gap-3 px-4 xl-mobile:gap-5 flex-auto\">
                        <p class=\"hidden w-full text-lightBlack uppercase font-bold text-base text-center content-center xl-mobile:block md:text-2xl\">";
            // line 210
            echo ($context["text_catalog_all"] ?? null);
            echo "</p>
                        <div class=\"flex items-end justify-center w-auto flex-auto\">
                          <a href=\"";
            // line 212
            echo ($context["continue"] ?? null);
            echo "\" class=\"relative flex bg-gradient-to-r from-lightGreen to-darkGreen px-10 py-3 rounded-md text-white xl-mobile:px-6 md:px-10 transition group/catalog-link\">
                            ";
            // line 213
            echo ($context["text_catalog"] ?? null);
            echo "
                          </a>
                        </div>
                      </div>

                    </div>

                  </li>
                  <!-- full catalog link -->
                </ul>
              </div>
              
            </div>


        ";
        }
        // line 229
        echo "        
      </div>
    </section>
  </div>

  <div class=\"main-container has-section-divided max-w-screen-xl-monitor mx-auto grid main-bg-linear gap-36 pt-11 *:-my-11\">
    ";
        // line 235
        echo ($context["content_bottom"] ?? null);
        echo "
  </div>

";
        // line 238
        echo ($context["footer"] ?? null);
        echo " 
";
    }

    public function getTemplateName()
    {
        return "berisey/template/product/special.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  509 => 238,  503 => 235,  495 => 229,  476 => 213,  472 => 212,  467 => 210,  459 => 205,  454 => 203,  449 => 201,  437 => 192,  431 => 188,  423 => 183,  416 => 179,  412 => 178,  405 => 173,  384 => 160,  375 => 153,  370 => 150,  361 => 147,  357 => 146,  354 => 145,  350 => 144,  346 => 142,  344 => 141,  336 => 136,  330 => 132,  324 => 130,  318 => 128,  316 => 127,  308 => 122,  297 => 114,  293 => 113,  289 => 112,  283 => 108,  279 => 107,  272 => 102,  266 => 101,  258 => 99,  250 => 97,  247 => 96,  243 => 95,  234 => 89,  227 => 84,  225 => 83,  217 => 78,  213 => 76,  206 => 74,  202 => 72,  195 => 70,  191 => 68,  181 => 64,  173 => 63,  170 => 62,  166 => 61,  163 => 60,  161 => 59,  156 => 57,  148 => 56,  145 => 55,  141 => 54,  138 => 53,  136 => 52,  131 => 50,  123 => 49,  120 => 48,  116 => 47,  110 => 44,  95 => 32,  91 => 31,  83 => 25,  77 => 21,  66 => 16,  58 => 11,  55 => 10,  51 => 9,  47 => 7,  45 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "berisey/template/product/special.twig", "");
    }
}

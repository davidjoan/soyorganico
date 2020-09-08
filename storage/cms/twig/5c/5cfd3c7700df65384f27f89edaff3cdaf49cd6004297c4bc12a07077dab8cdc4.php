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

/* C:\Users\TATAJDJ\Proyectos\soyorganico\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_recetas.htm */
class __TwigTemplate_d7ea8ad2d742e85ef0500e2beea308a477c6036ab3eaa21e7c45753e10e9902b extends \Twig\Template
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
        echo "<!-- Third Section -->
<section id=\"recetas\" class=\"main\">
    <header class=\"major\">
        <h2>Recetas</h2>
        <p>Aqui encontraras el mejor contenido saludable, tips, clases y audio-recetas <br />
            Veras la mejor calidad de contenido para que puedas llevar una vida 100% Saludable.</p>
    </header>
    <ul class=\"statistics\">
        <li class=\"style1\">
            <span class=\"icon fa-book\"></span>
            <strong>520</strong> Recetas
        </li>
        <li class=\"style2\">
            <span class=\"icon fa-video-camera\"></span>
            <strong>892</strong> Video
        </li>
        <li class=\"style3\">
            <span class=\"icon fa-headphones\"></span>
            <strong>48</strong> Audios
        </li>
        <li class=\"style4\">
            <span class=\"icon fa-credit-card\"></span>
            <strong>4,096</strong> Compras
        </li>
        <li class=\"style5\">
            <span class=\"icon fa-gift\"></span>
            <strong>241</strong> Regalos
        </li>
    </ul>
</section>";
    }

    public function getTemplateName()
    {
        return "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_recetas.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Third Section -->
<section id=\"recetas\" class=\"main\">
    <header class=\"major\">
        <h2>Recetas</h2>
        <p>Aqui encontraras el mejor contenido saludable, tips, clases y audio-recetas <br />
            Veras la mejor calidad de contenido para que puedas llevar una vida 100% Saludable.</p>
    </header>
    <ul class=\"statistics\">
        <li class=\"style1\">
            <span class=\"icon fa-book\"></span>
            <strong>520</strong> Recetas
        </li>
        <li class=\"style2\">
            <span class=\"icon fa-video-camera\"></span>
            <strong>892</strong> Video
        </li>
        <li class=\"style3\">
            <span class=\"icon fa-headphones\"></span>
            <strong>48</strong> Audios
        </li>
        <li class=\"style4\">
            <span class=\"icon fa-credit-card\"></span>
            <strong>4,096</strong> Compras
        </li>
        <li class=\"style5\">
            <span class=\"icon fa-gift\"></span>
            <strong>241</strong> Regalos
        </li>
    </ul>
</section>", "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_recetas.htm", "");
    }
}

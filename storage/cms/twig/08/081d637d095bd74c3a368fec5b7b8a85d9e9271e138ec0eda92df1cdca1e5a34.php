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

/* C:\Users\TATAJDJ\Proyectos\soyorganico\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_nosotros.htm */
class __TwigTemplate_341edae19953ecf99605ba5c3f898b1a7a173ca362a2b04ef171ffeb3132e51a extends \Twig\Template
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
        echo "<section id=\"nosotros\" class=\"main\">
    <div class=\"spotlight\">
        <div class=\"content\">
            <header class=\"major\">
                <h2>Nosotros</h2>
            </header>
            <p>
            Soy orgánico es una comunidad que nace bajo la premisa de difundir productos alimenticios sanos, que nos permita conservar y/o mejorar su salud. Creemos en el comercio justo, a través del cual los campesinos y productores reciban un pago justo por su trabajo y su producto.
También, sin ser menos importante, buscamos la conservación del medio ambiente a través de prácticas que no dañen nuestro medio.
</p>
<p>Soy orgánico está comprometido con el aspecto ambiental, la alimentación sana y el desarrollo social.</p>
        </div>
        <span class=\"image\"><img src=\"";
        // line 13
        echo "storage/app/media/fruta2.jpg";
        echo "\" alt=\"image\" /></span>
    </div>
</section>";
    }

    public function getTemplateName()
    {
        return "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_nosotros.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 13,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<section id=\"nosotros\" class=\"main\">
    <div class=\"spotlight\">
        <div class=\"content\">
            <header class=\"major\">
                <h2>Nosotros</h2>
            </header>
            <p>
            Soy orgánico es una comunidad que nace bajo la premisa de difundir productos alimenticios sanos, que nos permita conservar y/o mejorar su salud. Creemos en el comercio justo, a través del cual los campesinos y productores reciban un pago justo por su trabajo y su producto.
También, sin ser menos importante, buscamos la conservación del medio ambiente a través de prácticas que no dañen nuestro medio.
</p>
<p>Soy orgánico está comprometido con el aspecto ambiental, la alimentación sana y el desarrollo social.</p>
        </div>
        <span class=\"image\"><img src=\"{{'storage/app/media/fruta2.jpg'}}\" alt=\"image\" /></span>
    </div>
</section>", "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_nosotros.htm", "");
    }
}

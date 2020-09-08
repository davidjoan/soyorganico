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

/* C:\Users\TATAJDJ\Proyectos\soyorganico\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_productos.htm */
class __TwigTemplate_db6f5e548a4a5e5956bc93689a45addb691c93613ced85dbce05409def78b678 extends \Twig\Template
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
        echo "<section id=\"productos\" class=\"main\">
    <header class=\"major\">
        <h2>Productos</h2>
    </header>
    <ul class=\"features\">
        <li>
            <span class=\"icon major style1 fa-cutlery\"></span>
            <h3>Sabor insuperable</h3>
            <p>Te invitamos a probar nuestra variedad de productos orgánicos.</p>
        </li>
        <li>
            <span class=\"icon major style3 fa-smile-o\"></span>
            <h3>Clientes Felices</h3>
            <p>Lo mas importante para nosotros es la satisfación total de nuestros clientes.</p>
        </li>
        <li>
            <span class=\"icon major style5 fa-diamond\"></span>
            <h3>100% Orgánicos</h3>
            <p>Garantizamos el origen de nuestros productos 100% orgánicos.</p>
        </li>
    </ul>
</section>";
    }

    public function getTemplateName()
    {
        return "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_productos.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<section id=\"productos\" class=\"main\">
    <header class=\"major\">
        <h2>Productos</h2>
    </header>
    <ul class=\"features\">
        <li>
            <span class=\"icon major style1 fa-cutlery\"></span>
            <h3>Sabor insuperable</h3>
            <p>Te invitamos a probar nuestra variedad de productos orgánicos.</p>
        </li>
        <li>
            <span class=\"icon major style3 fa-smile-o\"></span>
            <h3>Clientes Felices</h3>
            <p>Lo mas importante para nosotros es la satisfación total de nuestros clientes.</p>
        </li>
        <li>
            <span class=\"icon major style5 fa-diamond\"></span>
            <h3>100% Orgánicos</h3>
            <p>Garantizamos el origen de nuestros productos 100% orgánicos.</p>
        </li>
    </ul>
</section>", "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/section_productos.htm", "");
    }
}

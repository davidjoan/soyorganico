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

/* C:\Users\TATAJDJ\Proyectos\soyorganico\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm */
class __TwigTemplate_eef75549a0d35b241583f7d06c3c406a99a7b1f7e4e7f99bec47b6eeacf75c67 extends \Twig\Template
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
        echo "<!-- Nav -->
<nav id=\"nav\">
    <ul>
        <li><a href=\"#nosotros\">Acerca de</a></li>
        <li><a href=\"#productos\">Productos</a></li>
        <li><a href=\"#recetas\">Recetas</a></li>
    </ul>
</nav>";
    }

    public function getTemplateName()
    {
        return "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Nav -->
<nav id=\"nav\">
    <ul>
        <li><a href=\"#nosotros\">Acerca de</a></li>
        <li><a href=\"#productos\">Productos</a></li>
        <li><a href=\"#recetas\">Recetas</a></li>
    </ul>
</nav>", "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm", "");
    }
}

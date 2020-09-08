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

/* C:\Users\TATAJDJ\Proyectos\soyorganico\install-master/plugins/laminsanneh/flexicontact/components/contactform/default.htm */
class __TwigTemplate_e0cd0f8b43db0cef1c81284fd37b916ff55237bb9761c0bf9bf72c9490de9c36 extends \Twig\Template
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
        echo "<div class=\"confirm-container\">
    <!--This will contain the confirmation when the email is successfully sent-->
</div>
<form class=\"flexiContactForm\" role=\"form\"
      data-request=\"";
        // line 5
        echo twig_escape_filter($this->env, ($context["__SELF__"] ?? null), "html", null, true);
        echo "::onMailSent\"
      data-request-update=\"'";
        // line 6
        echo twig_escape_filter($this->env, ($context["__SELF__"] ?? null), "html", null, true);
        echo "::confirm': '.confirm-container'\">

    <div class=\"form-groups\">
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\"  name=\"name\" placeholder=\"Nombre\">
        </div>
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\" name=\"email\" placeholder=\"Correo\">
        </div>
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\" name=\"subject\" placeholder=\"Tema\">
        </div>
        <div class=\"form-group\">
            <textarea class=\"form-control\" value=\"\" name=\"body\" placeholder=\"Mensaje\" cols=\"30\" rows=\"10\"></textarea>
        </div>
        ";
        // line 21
        if (twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "enableCaptcha", [], "any", false, false, false, 21)) {
            // line 22
            echo "            <div class=\"form-group\">
                <div class=\"g-recaptcha\" data-sitekey=\"";
            // line 23
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "siteKey", [], "any", false, false, false, 23), "html", null, true);
            echo "\"></div>
            </div>
        ";
        }
        // line 26
        echo "        <button type=\"submit\" class=\"btn btn-primary btn-lg pull-right\">Enviar</button>
    </div>
</form>
";
    }

    public function getTemplateName()
    {
        return "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/plugins/laminsanneh/flexicontact/components/contactform/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 26,  70 => 23,  67 => 22,  65 => 21,  47 => 6,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"confirm-container\">
    <!--This will contain the confirmation when the email is successfully sent-->
</div>
<form class=\"flexiContactForm\" role=\"form\"
      data-request=\"{{ __SELF__ }}::onMailSent\"
      data-request-update=\"'{{ __SELF__ }}::confirm': '.confirm-container'\">

    <div class=\"form-groups\">
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\"  name=\"name\" placeholder=\"Nombre\">
        </div>
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\" name=\"email\" placeholder=\"Correo\">
        </div>
        <div class=\"form-group\">
            <input type=\"text\" class=\"form-control\" value=\"\" name=\"subject\" placeholder=\"Tema\">
        </div>
        <div class=\"form-group\">
            <textarea class=\"form-control\" value=\"\" name=\"body\" placeholder=\"Mensaje\" cols=\"30\" rows=\"10\"></textarea>
        </div>
        {% if __SELF__.enableCaptcha %}
            <div class=\"form-group\">
                <div class=\"g-recaptcha\" data-sitekey=\"{{ __SELF__.siteKey }}\"></div>
            </div>
        {% endif %}
        <button type=\"submit\" class=\"btn btn-primary btn-lg pull-right\">Enviar</button>
    </div>
</form>
", "C:\\Users\\TATAJDJ\\Proyectos\\soyorganico\\install-master/plugins/laminsanneh/flexicontact/components/contactform/default.htm", "");
    }
}

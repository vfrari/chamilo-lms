<!DOCTYPE html>
<!--[if lt IE 7]> <html lang="{{ document_language }}" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html lang="{{ document_language }}" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html lang="{{ document_language }}" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="{{ document_language }}" class="no-js"> <!--<![endif]-->
<head>
{% include "jquery_mobile/layout/head.tpl" %}
</head>
<body dir="{{ text_direction }}" class="{{ section_name }}">
<noscript>{{ "NoJavascript"|get_lang }}</noscript>

{% if show_header == true %}
    <div class="skip">
        <ul>
            <li><a href="#menu">{{ "WCAGGoMenu"|get_lang }}</a></li>
            <li><a href="#content" accesskey="2">{{ "WCAGGoContent"|get_lang }}</a></li>
        </ul>
    </div>
    <div id="wrapper">

        {# Bug and help notifications are disabled in mobile template #}

        {# topbar is disabled in mobile template #}

        <div id="main" class="container" data-role="page">
            <header data-role="header">
                <div class="row">
                    <div id="header_left" class="span4">
                        {# logo #}
                        {{ logo }}

                        {# plugin_header left #}
                        {% if plugin_header_left is not null %}
                            <div id="plugin_header_left">
                                {{ plugin_header_left }}
                            </div>
                        {% endif %}
                    </div>
                    <div id="header_center" class="span3">
                        {# plugin_header center #}
                        {% if plugin_header_center is not null %}
                            <div id="plugin_header_center">
                                {{ plugin_header_center }}
                            </div>
                        {% endif %}
                        &nbsp;
                    </div>
                    <div id="header_right" class="span5">
                        <ul id="notifications" class="nav nav-pills pull-right">
                            {{ notification_menu }}
                        </ul>

                        {# plugin_header right #}
                        {% if plugin_header_right is not null %}
                            <div id="plugin_header_right">
                                {{ plugin_header_right }}
                            </div>
                        {% endif %}
                        &nbsp;
                    </div>
                </div>

                {% if plugin_header_main %}
                    <div class="row">
                        <div class="span12">
                            <div id="plugin_header_main">
                                {{ plugin_header_main }}
                            </div>
                        </div>
                    </div>
                {% endif %}

                {# menu #}
                {% include "jquery_mobile/layout/menu.tpl" %}

                {# breadcrumb #}
                {{ breadcrumb }}
            </header>

            <div id="top_main_content" class="row">
            {# course navigation links/shortcuts need to be activated by the admin #}
            {% include "jquery_mobile/layout/course_navigation.tpl" %}
{% endif %}

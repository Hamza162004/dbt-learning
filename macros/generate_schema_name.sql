{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if target.name in ['dev', 'ci'] -%}
        {{ target.schema }}
    {%- else -%}
        {%- if custom_schema_name is none -%}
            {{ target.schema }}
        {%- else -%}
            {{ target.schema }}_{{ custom_schema_name | trim }}
        {%- endif -%}
    {%- endif -%}
{%- endmacro %}
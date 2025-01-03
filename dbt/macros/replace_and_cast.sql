{% macro replace_and_cast(column, null_value, data_type) %}
    case 
        when {{ column }} = '{{ null_value }}' then NULL
        else cast(replace({{ column }}, ',', '') as {{ data_type }})
    end
{% endmacro %}
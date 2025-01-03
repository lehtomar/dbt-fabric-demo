{% macro replace_and_cast(column, null_value, data_type) %}
    {# 
    This macro replaces specific values in a column with NULL and casts the result to a specified data type. 
    It also handles cases where numeric values may include commas as thousand separators.

    Parameters:
    - column (str): The column name to apply the transformation.
    - null_value (str): The value to be treated as NULL. Example: 'unknown' or an empty string ''.
    - data_type (str): The target data type for casting. Example: 'decimal(16,3)', 'int', 'date', etc.

    Usage:
    {{ replace_and_cast('[population]', "'unknown'", 'decimal(16,3)') }}
    #}
    case 
        when {{ column }} = '{{ null_value }}' then NULL
        else cast(replace({{ column }}, ',', '') as {{ data_type }})
    end
{% endmacro %}
{% macro no_nulls_in_cols(model_name) %}
    {%- set relation = adapter.get_relation(
        database=target.database,
        schema=target.schema,
        identifier=model_name
    ) -%}

    select * from {{ relation }} where
    {% for col in adapter.get_columns_in_relation(relation) %}
        {{ col.column }} IS NULL OR 
    {% endfor %}
    FALSE
{% endmacro %}

#project_name: "ecommerce_divakar"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: standard_date_format {
  value: "
  {% if _field._name contains 'month' %}
  {{ rendered_value | append: '-01' | date: '%b %Y' }}
  {% else %}
  {{ rendered_value }}
  {% endif %}
  "
}

project_name: "ecommerce_divakar"
constant: currency_html {
  value:
  "{% if _user_attributes['currency'] == 'EURO' %}
  €
  {% else %} ⌑
  {% endif %}
  "

}
localization_settings: {
  default_locale: en
  localization_level: permissive
}

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

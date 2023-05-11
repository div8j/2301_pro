view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: total {
    type: average
    sql: -${sale_price} ;;
  }
  dimension: eurovalue {
    type: number
    sql: ${TABLE}.sale_price ;;
    value_format_name: eur
  }
  measure: testinguser{
    type: sum
    sql: {% if _user_attributes['currency'] == 'EURO' %}
    ${eurovalue}
    {% else %}
    ${TABLE}.sale_price
    {% endif %};;
    value_format_name: decimal_2
    html: @{currency_html}}{{rendered_value}} ;;

  }

  measure: sum {
    type: number
    sql: CASE WHEN (${sale_price} > 200) THEN ${sale_price}
    WHEN (${sale_price} < 200) THEN -${sale_price}
    ELSE ${sale_price}
    END;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}

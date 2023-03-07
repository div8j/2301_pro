include:"/test_refinements.lkml"
view: users {
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  #dimension: id {
   ##type: number
    #sql: ${TABLE}.id ;;
  #}
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "Wallapop User Profile"
      url: "https://wallapop.com/app/user/{{ age._value }}"
      #url: "https://wallapop.com/app/user/{{ value }}"

      icon_url : "https://www.wallapop.com/images/icons/favicon.ico"
    }
    link: {
      label: "Jarvis User Profile"
      url: "https://jarvis.wallapop.com/#/user-detail/user-detail-products?userId={{ value }}"
      icon_url : "https://www.wallapop.com/images/icons/favicon.ico"
    }
  }
  measure: count {
    type: count
    drill_fields: [detail*]
    link: {
      label: "Show as line plot"
      url: "

      {% assign vis_config = '{

          \"show_view_names\":false,
          \"show_row_numbers\":true
          \"transpose\":false,
          \"truncate_text\":true,
          \"hide_totals\":false,
          \"hide_row_totals\":false,
          \"size_to_fit\":true,
          \"table_theme\":\"white\",
          \"limit_displayed_rows\":false,
          \"enable_conditional_formatting\":false,
          \"header_text_alignment\":\"left\",
          \"header_font_size\":\"12\",
          \"rows_font_size\":\"12\",
          \"conditional_formatting_include_totals\":false,
          \"conditional_formatting_include_nulls\":false,
          \"show_sql_query_menu_options\":false,
          \"show_totals\":true,
          \"show_row_totals\":true,
          \"truncate_header\":false,
          \"series_cell_visualizations\":{\"orders.count\":{\"is_active\":false}},
          \"type\":\"looker_grid\",
          \"defaults_version\":1
          }'%}
          {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=500"
      }
}


  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      events.count,
      orders.count,
      saralooker.count,
      sindhu.count,
      user_data.count
    ]
  }
}

view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    description: "https://www.adidas.co.in/football?grid=true&cm_mmc=AdieSEM_Google-_-{CampaignName}-_-{AdgroupName}-_-adidas&cm_mmca1=IN&cm_mmca2=e&gclid=Cj0KCQiA6fafBhC1ARIsAIJjL8koW_KpV-SlsmEb3AFlAladHaIu8T-QGYr73icqRhusBQb00yhYcBQaAoVREALw_wcB"
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
  measure: countwithlink {
    type: number
    value_format_name: gbp
    sql: ${count};;
    link: {
      label: "Drilldown"
      url: "https://gcps230.cloud.looker.com/dashboards/20"
    }
  }


}

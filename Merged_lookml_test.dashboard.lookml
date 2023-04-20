- dashboard: merged_lookml_test
  title: Merged_lookml_test
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: x5qGN4JyN9uHSncOVBpmRY
  elements:
  - name: T1
    title: T1
    merged_queries:
    - model: ecommerce_divakar
      explore: order_items
      type: table
      fields: [orders.status, orders.id, orders.count]
      sorts: [orders.count desc 0]
      limit: 500
      column_limit: 50
      hidden_pivots: {}
    - model: ecommerce_divakar
      explore: order_items_vijaya
      type: table
      fields: [orders.id, order_items_vijaya.count, orders.status]
      sorts: [order_items_vijaya.count desc 0]
      limit: 500
      join_fields:
      - field_name: orders.id
        source_field_name: orders.id
      - field_name: orders.status
        source_field_name: orders.status
    type: table
    row:
    col:
    width:
    height:

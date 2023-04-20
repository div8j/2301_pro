- dashboard: dashboard_testing
  title: Dashboard_Testing
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ORayIII4hB1iY1ecE5xMUw
  elements:
  - title: Tile_1
    name: Tile_1
    model: vinay_private_ecommerce
    explore: order_items
    type: table
    fields: [order_items.count, id, orders.status]
    sorts: [order_items.count desc 0]
    limit: 500
    total: true
    dynamic_fields: [{args: [order_items.count], calculation_type: running_total,
        category: table_calculation, based_on: order_items.count, label: Running total
          of Order Items Count, source_field: order_items.count, table_calculation: running_total_of_order_items_count,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {category: dimension, description: '', label: ID, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: id, args: [
          order_items.id, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: 1-50,
              filter: "<=50"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: 51-100, filter: ">=51"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: 'null', filter: 'null'}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
    note_state: collapsed
    note_display: above
    note_text: running total + Grouping Id - merging
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Tile1+Tile2
    title: Tile1+Tile2
    merged_queries:
    - model: vinay_private_ecommerce
      explore: order_items
      type: table
      fields: [order_items.count, id, orders.status]
      sorts: [order_items.count desc 0]
      limit: 500
      total: true
      dynamic_fields: [{args: [order_items.count], calculation_type: running_total,
          category: table_calculation, based_on: order_items.count, label: Running
            total of Order Items Count, source_field: order_items.count, table_calculation: running_total_of_order_items_count,
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}, {category: dimension, description: '', label: ID, value_format: !!null '',
          value_format_name: !!null '', calculation_type: group_by, dimension: id,
          args: [order_items.id, [{label: 1-50, filter: "<=50"}, {label: 51-100, filter: ">=51"},
              {label: 'null', filter: 'null'}], !!null ''], _kind_hint: dimension,
          _type_hint: string}]
    - model: ecommerce_divakar
      explore: order_items_vijaya
      type: table
      fields: [order_items_vijaya.count, id, products.brand, orders.status]
      sorts: [order_items_vijaya.count desc 0]
      limit: 500
      dynamic_fields: [{category: dimension, description: '', label: ID, value_format: !!null '',
          value_format_name: !!null '', calculation_type: group_by, dimension: id,
          args: [order_items_vijaya.id, [{label: 1-50, filter: "<=50"}, {label: 51-100,
                filter: ">=51"}, {label: 'null', filter: 'null'}], !!null ''], _kind_hint: dimension,
          _type_hint: string}, {args: [order_items_vijaya.count], calculation_type: percent_of_previous,
          category: table_calculation, based_on: order_items_vijaya.count, label: Percent
            of previous - Order Items Vijaya Count, source_field: order_items_vijaya.count,
          table_calculation: percent_of_previous_order_items_vijaya_count, value_format: !!null '',
          value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
      join_fields:
      - field_name: id
        source_field_name: id
      - field_name: orders.status
        source_field_name: orders.status
    type: looker_grid
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Tile_2
    name: Tile_2
    model: ecommerce_divakar
    explore: order_items_vijaya
    type: looker_grid
    fields: [order_items_vijaya.count, id, products.brand, orders.status]
    sorts: [order_items_vijaya.count desc 0]
    limit: 500
    dynamic_fields: [{category: dimension, description: '', label: ID, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: id, args: [
          order_items_vijaya.id, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: 1-50, filter: "<=50"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: 51-100, filter: ">=51"}, !ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: 'null', filter: 'null'}], !!null ''], _kind_hint: dimension,
        _type_hint: string}, {args: [order_items_vijaya.count], calculation_type: percent_of_previous,
        category: table_calculation, based_on: order_items_vijaya.count, label: Percent
          of previous - Order Items Vijaya Count, source_field: order_items_vijaya.count,
        table_calculation: percent_of_previous_order_items_vijaya_count, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - name: Tile_3
    title: Tile_3
    merged_queries:
    - model: ecommerce_divakar
      explore: orders
      type: table
      fields: [orders.id, orders.status, orders.count]
      sorts: [orders.count desc 0]
      limit: 500
    - model: vinay_private_ecommerce
      explore: orders
      type: table
      fields: [orders.id, orders.user_id, orders.count]
      limit: 500
      join_fields:
      - field_name: orders.id
        source_field_name: orders.id
    type: table
    row:
    col:
    width:
    height:

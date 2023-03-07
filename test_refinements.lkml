include: "/views/users.view.lkml"
view: +users {
  dimension: raja {
    label: "Test_Raj"
    type: number
    sql: "3" ;;
  }
}

import gleam/list as l

// TODO: please define the Pizza custom type
pub type Pizza {
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
    Margherita -> 7
    Caprese -> 9
    Formaggio -> 10
    ExtraSauce(p) -> 1 + pizza_price(p)
    ExtraToppings(p) -> 2 + pizza_price(p)
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  case l.length(order) {
    1 -> order_calc(order) + 3
    2 -> order_calc(order) + 2
    _ -> order_calc(order)
  }
}

fn order_calc(order: List(Pizza)) -> Int {
  case order {
    [] -> 0
    [p] -> pizza_price(p)
    [p, ..ps] -> pizza_price(p) + order_calc(ps)
  }
}

import gleam/list as l

pub fn today(days: List(Int)) -> Int {
  case days {
    [x, ..] -> x
    _ -> 0
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [x, ..xs] -> [{ x + 1 }, ..xs]
    [] -> [1]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  l.contains(days, 0)
}

pub fn total(days: List(Int)) -> Int {
  l.fold(days, 0, fn(x, y) { x + y })
}

pub fn busy_days(days: List(Int)) -> Int {
  l.filter(days, fn(x) { x >= 5 })
  |> l.length
}

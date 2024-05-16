import gleam/list as l

fn make_range(n: Int) -> List(Int) {
  l.range(1, n)
}

fn sum(ns: List(Int)) -> Int {
  l.fold(ns, 0, fn(x, y) { x + y })
}

pub fn square_of_sum(n: Int) -> Int {
  let m =
    make_range(n)
    |> sum()
  m * m
}

pub fn sum_of_squares(n: Int) -> Int {
  make_range(n)
  |> l.map(fn(x) { x * x })
  |> sum()
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}

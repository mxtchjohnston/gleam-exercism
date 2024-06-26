import gleam/float
import gleam/int

pub fn pence_to_pounds(pence: Int) -> Float {
  int.to_float(pence) *. 0.01
}

pub fn pounds_to_string(pounds) {
  "£" <> float.to_string(pounds)
}

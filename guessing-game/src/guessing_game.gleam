const magic = 42

pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    43 -> "So close"
    41 -> "So close"
    i if i > 43 -> "Too high"
    i if i < 41 -> "Too low"
    _ -> ""
  }
}

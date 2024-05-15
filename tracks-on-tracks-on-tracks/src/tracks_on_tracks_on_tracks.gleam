import gleam/list as l

pub fn new_list() -> List(String) {
  []
}

pub fn existing_list() -> List(String) {
  ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  l.append([language], languages)
}

pub fn count_languages(languages: List(String)) -> Int {
  l.length(languages)
}

pub fn reverse_list(languages: List(String)) -> List(String) {
  l.reverse(languages)
}

pub fn exciting_list(languages: List(String)) -> Bool {
  case languages {
    ["Gleam", ..] -> True
    [_x, "Gleam"] -> True
    [_x, "Gleam", _y] -> True
    _ -> False
  }
}

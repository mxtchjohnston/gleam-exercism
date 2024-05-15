import gleam/string as s

pub fn message(log_line: String) -> String {
  let message = case log_line {
    "[WARNING]: " <> rest -> rest
    "[INFO]: " <> rest -> rest
    "[ERROR]: " <> rest -> rest
    s -> s
  }
  s.trim(message)
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> _ -> "error"
    "[INFO]:" <> _ -> "info"
    "[WARNING]:" <> _ -> "warning"
    _ -> ""
  }
}

pub fn reformat(log_line: String) -> String {
  let message = message(log_line)
  let log_level = log_level(log_line)

  message <> " (" <> log_level <> ")"
}

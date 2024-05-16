import gleam/int
import gleam/string_builder

pub fn convert(number: Int) -> String {
  let pling = {
    number % 3 == 0
  }
  let plang = {
    number % 5 == 0
  }
  let plong = {
    number % 7 == 0
  }

  let builder = string_builder.new()

  string_builder.append(builder, {
    case pling {
      True -> "Pling"
      False -> ""
    }
  })

  string_builder.append(builder, {
    case plang {
      True -> "Plang"
      False -> ""
    }
  })

  string_builder.append(builder, {
    case plong {
      True -> "Plong"
      False -> ""
    }
  })

  case string_builder.is_empty(builder) {
    True -> int.to_string(number)
    False -> string_builder.to_string(builder)
  }
}

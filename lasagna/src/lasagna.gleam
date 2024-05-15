// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven() -> Int {
  let _time: Int = 40
}

// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(time: Int) -> Int {
  40 - time
}

// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(number_of_layers: Int) -> Int {
  number_of_layers * 2
}

// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(number_of_layers: Int, time: Int) -> Int {
  preparation_time_in_minutes(number_of_layers) + time
}

// Please define the alarm function
pub fn alarm() -> String {
  let _alarm: String = "Ding!"
}

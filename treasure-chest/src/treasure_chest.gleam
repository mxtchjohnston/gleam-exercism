// Please define the TreasureChest generic custom type
pub type TreasureChest(a) {
  TreasureChest(password: String, a)
}

// Please define the UnlockResult generic custom type
pub type UnlockResult(a) {
  Unlocked(a)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(pass, a) if password == pass -> Unlocked(a)
    _ -> WrongPassword
  }
}

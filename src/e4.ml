open Core

let three_digit_numbers = List.range 100 999

let is_palindrome n =
  let str = string_of_int n in
  String.(str = rev str)

let () =
  List.cartesian_product three_digit_numbers three_digit_numbers
  |> List.map ~f:(Tuple2.uncurry ( * ))
  |> List.sort ~compare:Int.descending
  |> List.find_exn ~f:is_palindrome
  |> printf "%d\n"

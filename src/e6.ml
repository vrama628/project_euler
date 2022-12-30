open Core

let first_hundred = List.range ~stop:`inclusive 1 100

let () =
  let sum_of_squares =
    List.sum (module Int) ~f:(Fn.flip Int.pow 2) first_hundred
  in
  let square_of_sum =
    Int.pow (List.sum (module Int) ~f:Fn.id first_hundred) 2
  in
  printf "%d\n" (square_of_sum - sum_of_squares)
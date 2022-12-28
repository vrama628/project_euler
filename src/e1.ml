open Core

let () =
  List.range 1 1000
  |> List.filter ~f:(fun n -> n % 3 = 0 || n % 5 = 0)
  |> List.fold ~init:0 ~f:( + )
  |> printf "%d\n"

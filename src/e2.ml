open Core

let fibonacci =
  Sequence.unfold ~init:(0, 1) ~f:(fun (a, b) -> Some (a + b, (b, a + b)))

let () =
  fibonacci
  |> Sequence.take_while ~f:(( >= ) 4_000_000)
  |> Sequence.filter ~f:(fun n -> n % 2 = 0)
  |> Sequence.fold ~init:0 ~f:( + )
  |> printf "%d\n"

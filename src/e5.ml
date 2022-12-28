open Core

let nats = Sequence.unfold ~init:1 ~f:(fun n -> Some (n, n + 1))

let divisors = List.range 1 20

let () =
  Sequence.find_exn nats ~f:(fun n ->
      List.for_all divisors ~f:(fun d -> n % d = 0)
  )
  |> printf "%d\n"
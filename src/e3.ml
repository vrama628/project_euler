open Core

let factors = Sequence.unfold ~init:2 ~f:(fun n -> Some (n, n + 1))

let rec prime_factors = function
  | 1 -> []
  | n ->
    let factor = Sequence.find_exn factors ~f:(fun d -> n % d = 0) in
    factor :: prime_factors (n / factor)

let () =
  printf
    "%d\n"
    (prime_factors 600851475143 |> List.max_elt ~compare |> Option.value_exn)

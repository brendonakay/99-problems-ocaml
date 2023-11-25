open Base
(* 2. Find the last but one (last and penultimate) elements of a list. (easy) *)
let rec last_but_one = function 
  | [] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_but_one t

let print_tuple opt =
  match  opt with
  | None -> "None"
  | Some (x, y) -> "X: " ^ x ^ ", Y: " ^ y

module M = struct
  (* Implement the problem solution here *)
  let problem = 
    let lbo = last_but_one ["a" ; "b" ; "c" ; "d"]
    in 
      Out_channel.output_string Stdlib.stdout
        (Printf.sprintf "Problem 2: %s\n" (print_tuple lbo) )
end

(* It is also possible to copy the components of a module inside another module by using an include statement. 
   This can be particularly useful to extend existing modules.
   https://v2.ocaml.org/manual/moduleexamples.html *)
include M
include Problem.Make (M)

(* Expect test for testing problem *)
let%expect_test _ = run  ; [%expect {| |}]


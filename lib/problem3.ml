(* 3. Find the K'th element of a list. (easy) *)
let rec k_element k = function 
  | [] -> None
  | h :: t -> if k = 1 then Some h else k_element (k - 1) t

let print_k opt =
  match opt with
  | None -> "None"
  | Some x -> x

module M = struct
  (* Implement the problem solution here *)
  let problem = 
    let k = k_element 2 ["a" ; "b" ; "c" ; "d"]
    in 
      Out_channel.output_string Stdlib.stdout
        (Printf.sprintf "Problem 3: %s\n" @@ print_k k )
end

(* It is also possible to copy the components of a module inside another module by using an include statement. 
   This can be particularly useful to extend existing modules.
   https://v2.ocaml.org/manual/moduleexamples.html *)
include M
include Problem.Make (M)

(* Expect test for testing problem *)
let%expect_test _ = run  ; [%expect {| |}]


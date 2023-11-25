(* Write a function last : 'a list -> 'a option that returns the last element of a list *)
let rec last = function 
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t

module M = struct
  (* Implement the problem solution here *)
  let problem = let last = last ["a" ; "b" ; "c" ; "d"]
  in 
    Out_channel.output_string Stdlib.stdout
      (Printf.sprintf "Problem 1: %s\n" ((function None -> "None" | Some a -> a) last) )

end

(* It is also possible to copy the components of a module inside another module by using an include statement. 
   This can be particularly useful to extend existing modules.
   https://v2.ocaml.org/manual/moduleexamples.html *)
include M
include Problem.Make (M)

(* Expect test for testing problem *)
let%expect_test _ = run  ; [%expect {| |}]


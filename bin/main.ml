open Problems_99

let () =
  let args = Sys.argv in
  let problem = args.(1) in

  let (module Problem : Problem.S ) =
    match problem with
    | "1" -> (module Problem1)
    | "2" -> (module Problem2)
    | "3" -> (module Problem3)
    | _ -> failwith "invalid day"
  in
  Problem.run

module type S = sig
  val run : unit
end

module type ProblemImpl = sig
  (*type t*)
  val problem : unit
end

module Make (Impl : ProblemImpl) : S = struct
  let run  =
    ()
end


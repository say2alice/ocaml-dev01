let rec unzip l =
  fun l ->
  match l with
    | [] -> []
    | (a,b)::tl ->
      let (l1, l2) = unzip tl in 
        (a::l1, b::l2);;
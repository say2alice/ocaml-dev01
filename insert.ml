let rec insert a l =
  match l with 
  | [] -> [a]
  | hd::tl ->
    if a < hd then a::l
    else  hd::insert a tl;;

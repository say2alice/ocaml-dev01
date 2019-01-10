let rec drop l n =
  match l with
  | [] -> []
  | hd::tl -> if n > 0 then drop tl (n-1) else hd::(drop tl 0);;

let rec drop l n =
  if n = 0 then l
  else 
    match l with
    | [] -> []
    | hd::tl -> drop tl (n-1);;
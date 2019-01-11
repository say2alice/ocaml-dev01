let rec map f l =
  match l with 
  | [] -> []
  | hd::tl -> (f hd)::(map f tl);;


let rec sort l =
  match l with 
  | [] -> []
  | hd::tl -> insert hd (sort tl);; 

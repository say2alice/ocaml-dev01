let rec remove_first a l =
  match l with
  | [] -> []
  | hd::tl -> 
    if a = hd then tl
    else hd :: (remove_first a tl);; 

remove_first 2 [1;2;3;4];;
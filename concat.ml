let rec concat l =
  match l with
  | [] -> []
  | hd::tl -> hd @ (concat tl);; 
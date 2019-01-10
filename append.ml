let rec append l1 l2 =
  match l1 with
  | [] -> l2
  | hd::tl -> hd :: (append tl l2);;

append [1;2;4] [4;5;6];;
let rec fold_right f l a =
  match l with 
  | [] -> a
  | hd::tl -> f hd (fold_right f tl a);;

let sum l = fold_right (fun x y -> x + y) l 0;;

let sum l = fold_right(+) l 0;;

let prod l = fold_right( *) l 1;;

(* list length *)
let length l = fold_right (fun _ y -> y + 1) l 0;;

let reverse l = fold_right(fun e l -> l @ [e]) l [];;

let map f l = fold_right(fun e l -> (f e)::l) l [];;

let filter f l = fold_right(fun e l -> if f e then e::l else l) l [];;

let all p l = fold_right(fun x y -> if (p x) && y then true else false) l true ;;

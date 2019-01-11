let rec fold_left f a l =
  match l with
  | [] -> a
  | hd::tl -> fold_left f (f a hd) tl;;


let sum l = fold_left(fun x y -> x + y) 0 l ;;

let pord l = fold_left(fun x y -> x * y) 1 l;;

let length l = fold_left(fun x _ -> x + 1) 0 l;;

let reverse l = fold_left(fun l e -> e::l) [] l;;


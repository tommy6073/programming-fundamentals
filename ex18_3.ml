(* 目的：受け取った ekimei0 までの距離を lst から探して返す *)
(* assoc : string -> (string * float) list -> float *)
let rec assoc ekimei0 lst = match lst with
    [] -> raise Not_found
  | (ekimei1, kyori) :: rest -> if ekimei0 = ekimei1 then kyori
                                                     else assoc ekimei0 rest

(* テスト *) 
(* let test1 = assoc "後楽園" [] = infinity *)
let test2 = assoc "後楽園" [("新大塚", 1.2); ("後楽園", 1.8)] = 1.8 
(* let test3 = assoc "池袋" [("新大塚", 1.2); ("後楽園", 1.8)] = infinity *)

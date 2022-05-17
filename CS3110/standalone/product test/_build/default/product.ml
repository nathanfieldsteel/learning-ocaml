  let product lst =
    let rec product_acc p l = match l with
      | [] -> p
      | x :: xs -> product_acc (x * p) xs in
    product_acc 1 lst

  let fifth_element l =
    if (List.length l >= 5) then (List.nth l 4) else (0)

  let descending_sort lst =
    lst
    |> List.sort Stdlib.compare
    |> List.rev

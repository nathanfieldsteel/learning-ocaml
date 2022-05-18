  open OUnit2
  open Library

  let tests = "test suite for these two functions" >::: [
    "empty list" >:: (fun _ -> assert_equal 0 (fifth_element []));
    "short list" >:: (fun _ -> assert_equal 0 (fifth_element [1;2;3]));
    "five elts" >:: (fun _ -> assert_equal 5 (fifth_element [1;2;3;4;5]));
    "repeat elts" >:: (fun _ -> assert_equal 4 (fifth_element [4;4;4;4;4;4;4]));
    "fifth zero" >:: (fun _ -> assert_equal 0 (fifth_element [1;2;3;4;0]));

    "empty sort" >:: (fun _ -> assert_equal [] (descending_sort []));
    "singleton sort" >:: (fun _ -> assert_equal [10] (descending_sort [10]));
    "pre-sorted" >:: (fun _ -> assert_equal [3;2;1] (descending_sort [3;2;1]));
    "reverse sort" >:: (fun _ -> assert_equal [5;4;3;2;1] (descending_sort [1;2;3;4;5]));
    "bigger sort" >:: (fun _ -> assert_equal [10;9;8;7;6;6;6;5] (descending_sort [5;6;10;9;6;6;7;8]));
  ]

  let _ = run_test_tt_main tests

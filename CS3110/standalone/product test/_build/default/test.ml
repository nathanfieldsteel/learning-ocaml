  open OUnit2
  open Product

  let tests = "test suite for product" >::: [
    "empty" >:: (fun _ -> assert_equal 1 (product []));
    "singleton one" >:: (fun _ -> assert_equal 1 (product [1]));
    "singleton five" >:: (fun _ -> assert_equal 5 (product [5]));
    "two_elements_both_one" >:: (fun _ -> assert_equal 1 (product [1; 1]));
    "two_elements_one_one" >:: (fun _ -> assert_equal 3 (product [1; 3]));
    "two_elements_neither_one" >:: (fun _ -> assert_equal 10 (product [5; 2]));
    "three_elements" >:: (fun _ -> assert_equal 30 (product [2; 3; 5]));
    "six_elements" >:: (fun _ -> assert_equal 720 (product [1;2;3;4;5;6]));
  ]

  let _ = run_test_tt_main tests

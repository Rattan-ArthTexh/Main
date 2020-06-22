//
//  TestViewController.swift
//  MapDemo
//
//  Created by SAT PAL on 08/02/20.
//  Copyright © 2020 SAT PAL. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("view did load")
    }
    
    override func loadView() {
        print("load view")
    }
    
    override func viewWillLayoutSubviews() {
        print("will layout subview")
    }
    
    override func viewDidLayoutSubviews() {
        
        print("did layout subview")
    }


    override func viewWillAppear(_ animated: Bool) {
        
        print("view will appear")
    }
    
  
}

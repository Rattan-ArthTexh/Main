//
//  FirstViewController.swift
//  MapDemo
//
//  Created by SAT PAL on 08/05/20.
//  Copyright © 2020 SAT PAL. All rights reserved.
//

import UIKit
import  CurvedLabel

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var my_label: DGCurvedLabel!
    
    @IBOutlet weak var slider_value: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider_value.addTarget(self, action: #selector(valueChanged), for: .valueChanged)

        my_label.radius = 50
    }
    
    
    @objc func valueChanged() {
        
        let newLabel = DGCurvedLabel()
        
        newLabel.frame = my_label.frame
        
        newLabel.text = my_label.text
        
        my_label.removeFromSuperview()
        
        print(slider_value.value)
        
        newLabel.radius = CGFloat(slider_value.value)
        
        
        newLabel.backgroundColor = .red
        
        newLabel.textColor = .black
        
        self.my_label = newLabel
        
        my_label.text = newLabel.text
        
        view.addSubview(self.my_label)
    }

    @IBAction func tap_reset_btn(_ sender: Any) {
        
        
    }
    
    @IBAction func tap_start_btn(_ sender: Any) {
        
        print(self.my_label.radius)
        
        
//        let label = DGCurvedLabel()
//
//        label.frame = self.my_label.frame
//
//        label.bounds = self.my_label.bounds
//
//        label.backgroundColor = .red
//
//        label.textColor = .black
//
//        label.text = my_label.text
//
//        self.my_label = nil
//
//        self.my_label = DGCurvedLabel()
//
//        my_label.text = "It is Okay now"
        
    }
    
    
}

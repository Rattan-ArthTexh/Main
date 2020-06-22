//
//  FirstViewController.swift
//  MapDemo
//
//  Created by SAT PAL on 24/01/20.
//  Copyright © 2020 SAT PAL. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var list_tableView : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    deinit {
        print("first Controller deinitializer")
    }
    

}
extension FirstViewController: UITableViewDelegate {
    
    
}

extension FirstViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =
        
        FirstTableViewCell
    }
    
    
    
}

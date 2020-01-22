//
//  SecondViewController.swift
//  SwiftGenDemo
//
//  Created by valmet on 2020/01/22.
//  Copyright © 2020 valmet. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private var label: UILabel!

    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = text
    }
}


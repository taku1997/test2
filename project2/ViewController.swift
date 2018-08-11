//
//  ViewController.swift
//  project2
//
//  Created by 西村拓海 on 2018/08/11.
//  Copyright © 2018年 西村拓海. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label1: UILabel!
    @IBAction func `switch`(_ sender: UIButton) {
        label1.text = "HELLO WOLRD"
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
        {
            self.label1.text = ""
        }
    }
    
    


}


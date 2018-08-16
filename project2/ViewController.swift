//
//  ViewController.swift
//  project2
//
//  Created by 西村拓海 on 2018/08/11.
//  Copyright © 2018年 西村拓海. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    let table = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新着記事" // Navigation Barのタイトルを設定
        
    }
    
    
    
            @IBAction func get(_ sender: Any) {
            
            Alamofire.request("https://www.googleapis.com/books/v1/volumes?q=intitle:%E3%83%80%E3%83%B3%E3%82%B8%E3%83%A7%E3%83%B3%E9%A3%AF&Country=JP").responseJSON {
            
            response in
          
            if let data = response.data,let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")  // original server data as UTF8 String;;
            }
            }
    }
}


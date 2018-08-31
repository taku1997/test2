//
//  ArticleListViewController.swift
//  project2
//
//  Created by 西村拓海 on 2018/08/22.
//  Copyright © 2018年 西村拓海. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var articles: [[String: String?]] = [] // 記事を入れるプロパティを定義
    
    let table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新着記事"
        
        table.frame = view.frame // tableの大きさをviewの大きさに合わせる
        //view.addSubview(table) // viewにtableを乗せる
        table.dataSource = self // dataSouceプロパティに自身を代入
        getArticles()
        
    }
    
        func getArticles() {
            Alamofire.request("https://qiita.com/api/v2/items").responseJSON{
            
            response in
         
            //print(response.result.value)
                
            guard let object = response.result.value else {
                return
            }
            
            
            let json = JSON(object)
            json.forEach { (_, json) in
                let article: [String: String?] = [
                    "title": json["title"].string,
                    "userId": json["user"]["id"].string,
                    "userThumbnail": json["user"]["profile_image_url"].string
                ]
                
                self.articles.append(article)
                //print(self.articles)
                }
                self.table.reloadData() // TableViewを更新
            }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Qiitacell = tableView.dequeueReusableCell(withIdentifier: "QiitaCell") as! CustomTableViewCell
        let article = articles[indexPath.row]
        Qiitacell.titlelabel.text = article["title"]!
        Qiitacell.userlabel.text = article["userId"]!
        
        
        return Qiitacell
      
        /*
        //cell.detailTextLabel?.text = article["userId"]! // 投稿者のユーザーIDをdetailTextLabelにセット
        //cell.imageView?.image =  UIImage(named: "_")
            */
       
    }
  
    
}

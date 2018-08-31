//
//  CustomTableViewCell.swift
//  project2
//
//  Created by 西村拓海 on 2018/08/25.
//  Copyright © 2018年 西村拓海. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var UIimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var userlabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  NewTableViewCell.swift
//  存代码项目
//
//  Created by USER on 2019/02/24.
//  Copyright © 2019 ZZL. All rights reserved.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    @IBOutlet weak var textLable: UILabel!
    
    @IBOutlet weak var testButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

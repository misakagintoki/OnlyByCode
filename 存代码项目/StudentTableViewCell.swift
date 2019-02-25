//
//  StudentTableViewCell.swift
//  存代码项目
//
//  Created by USER on 2019/02/24.
//  Copyright © 2019 ZZL. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    let nameTitleLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "姓名"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gradeTitleLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "年级"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gradeLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //如果没有建立画板，是不会进入awakeFromNib的，所有要把设置控件的代码放在其他地方
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        self.contentView.addSubview(nameTitleLabel)
//        self.contentView.addSubview(gradeTitleLabel)
//        self.contentView.addSubview(nameLabel)
//        self.contentView.addSubview(gradeLabel)
//
//        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.addSubview(nameTitleLabel)
//        self.contentView.addSubview(gradeTitleLabel)
        self.contentView.addSubview(nameLabel)
//        self.contentView.addSubview(gradeLabel)
        
        setupView()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func setupView(){
        //关于NameTitleLabel的约束  leadingAnchor左对齐。topAnchor上对齐，trailingAnchor右对齐
        nameTitleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        nameTitleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        nameTitleLabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
        nameTitleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: nameTitleLabel.trailingAnchor, constant: 0).isActive = true
        nameLabel.topAnchor.constraint(equalTo: nameTitleLabel.topAnchor, constant: 0).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: nameTitleLabel.heightAnchor, multiplier: 1).isActive = true
    }
    
}

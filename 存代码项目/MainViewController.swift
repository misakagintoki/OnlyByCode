//
//  MainViewController.swift
//  存代码项目
//
//  Created by USER on 2019/02/24.
//  Copyright © 2019 ZZL. All rights reserved.
//

import UIKit

let ScrennSize = UIScreen.main.bounds

class MainViewController: UIViewController {
    
    lazy var titleLabel:UILabel = {    //lazy var 当这个变量需要被用到的时候，才会建立，节省计算量
        let label = UILabel()
        label.frame = CGRect(x: 20, y: 88, width: ScrennSize.width - 40, height: 100)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "何老师的学生们"
        return label
    }()
    
    lazy var listTableView:UITableView = {
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 188, width: ScrennSize.width, height: ScrennSize.height - 188)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //给tableView添加一个cell（注册）
        listTableView.register(StudentTableViewCell.self, forCellReuseIdentifier: "StudentCell")
//        listTableView.register(NewTableViewCell.self, forCellReuseIdentifier: "NewCell")
        listTableView.register(UINib.init(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "NewCell")
        
        
        self.view.addSubview(titleLabel)
        self.view.addSubview(listTableView)
        self.view.backgroundColor = .white
        
    }
    
    
    
    
}

extension MainViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentTableViewCell
            cell.nameLabel.text = "张大海"
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell", for: indexPath) as! NewTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 46
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let secondPage = SecondViewController()
            secondPage.color = UIColor.green
//            self.navigationController?.pushViewController(secondPage, animated: true)
            self.present(secondPage, animated: true, completion: nil)
        }
    }
}

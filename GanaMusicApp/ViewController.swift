//
//  ViewController.swift
//  GanaMusicApp
//
//  Created by UTTAM on 29/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var musicTableVew: UITableView!
    
    var categoryArray = [MusicCategory]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryArray = MusicCategory.getArray()
        musicTableVew.dataSource = self
        musicTableVew.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicTableViewCell", for: indexPath) as! MusicTableViewCell
        let category = categoryArray[indexPath.row]
        
        cell.categoryModel = category
        cell.getCategoryTitle(tittle: category.categoryTitle)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270
    }
}


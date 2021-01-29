//
//  MusicTableViewCell.swift
//  GanaMusicApp
//
//  Created by UTTAM on 29/01/21.
//  Copyright © 2021 UTTAM. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var caategoryLabel: UILabel!
    
    @IBOutlet weak var seeMoreButton: UIButton!
    
    @IBOutlet weak var musicCollectionView: UICollectionView!
    
    var categoryModel: MusicCategory?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        musicCollectionView.dataSource = self
        musicCollectionView.delegate = self
    }
    
    func getCategoryTitle(tittle: String) {
        caategoryLabel.text = tittle
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryModel?.songArray.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MusicCollectionViewCell", for: indexPath) as! MusicCollectionViewCell
        let item = categoryModel?.songArray[indexPath.row]
        cell.musicImage.image = UIImage(named: item!.img)
        cell.songLabel.text = item?.songTitle
        cell.artistLabel.text = item?.description
        
        cell.musicImage.layer.cornerRadius = 8
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170.0, height: 230.0)
    }

}

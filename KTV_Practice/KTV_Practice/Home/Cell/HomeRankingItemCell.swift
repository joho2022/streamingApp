//
//  HomeRankingItemCell.swift
//  KTV_Practice
//
//  Created by 조호근 on 5/5/24.
//

import UIKit

class HomeRankingItemCell: UICollectionViewCell {
    
    static let identifier: String = "HomeRankingItemCell"

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.numberLabel.text = nil
    }
    
    func setRank(_ rank: Int) {
        self.numberLabel.text = "\(rank)"
    }
}

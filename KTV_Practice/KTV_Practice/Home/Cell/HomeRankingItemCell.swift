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
    private var imageTask: Task<Void, Never>?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.numberLabel.text = nil
        self.thumbnailImageView.image = nil
        self.imageTask?.cancel()
        self.imageTask = nil
    }
    
    func setRank(_ data: Home.Ranking, rank: Int) {
        self.numberLabel.text = "\(rank)"
        self.imageTask = self.thumbnailImageView.loadImage(url: data.imageUrl)
    }
}

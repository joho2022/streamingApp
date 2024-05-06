//
//  HomeRecommendItemCell.swift
//  KTV_Practice
//
//  Created by 조호근 on 5/5/24.
//

import UIKit

class HomeRecommendItemCell: UITableViewCell {
    
    static let height: CGFloat = 71
    static let identifier: String = "HomeRecommendItemCell"

    
    @IBOutlet weak var thumbnailContainerView: UIView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var playTimeBGView: UIView!
    @IBOutlet weak var playTimeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    private var imageTask: Task<Void, Never>?
    private static let timeFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        formatter.allowedUnits = [.minute, .second]
        
        return formatter
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.thumbnailContainerView.layer.cornerRadius = 5
        self.rankLabel.layer.cornerRadius = 5
        self.rankLabel.clipsToBounds = true
        self.playTimeBGView.layer.cornerRadius = 3
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.titleLabel.text = nil
        self.descriptionLabel.text = nil
        self.thumbnailImageView.image = nil
        self.playTimeLabel.text = nil
        self.rankLabel.text = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(_ data: Home.Recommend, rank: Int?) {
        self.rankLabel.isHidden = rank == nil
        if let rank {
            self.rankLabel.text = "\(rank)"
        }
        self.titleLabel.text = data.title
        self.descriptionLabel.text = data.channel
        self.playTimeLabel.text = Self.timeFormatter.string(from: data.playtime)
        self.imageTask = self.thumbnailImageView.loadImage(url: data.imageUrl)
    }
}

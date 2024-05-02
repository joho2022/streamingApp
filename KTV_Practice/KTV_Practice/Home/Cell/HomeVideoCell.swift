//
//  HomeVideoCell.swift
//  KTV_Practice
//
//  Created by 조호근 on 5/2/24.
//

import UIKit

class HomeVideoCell: UITableViewCell {

    static let identifier: String = "HomeVideoCell"
    static let height: CGFloat = 321
    
    @IBOutlet weak var hotImageView: UIImageView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var channelTitleLabel: UILabel!
    @IBOutlet weak var channelSubtitleLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.containerView.layer.cornerRadius = 10
        self.containerView.layer.borderColor = UIColor(named: "stroke-light")?.cgColor
        self.containerView.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

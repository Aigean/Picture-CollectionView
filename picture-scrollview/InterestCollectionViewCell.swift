//
//  InterestCollectionViewCell.swift
//  picture-scrollview
//
//  Created by  周毅 on 16/6/22.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    var interest: Interest!{
        didSet{
            updateUI()
        }
    }
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    private func updateUI() {
        interestTitleLabel.text! = interest.title
        featuredImageView.image = interest.featuredImage
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}

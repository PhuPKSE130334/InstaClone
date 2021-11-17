//
//  StoryCollectionViewCell.swift
//  InstaClone
//
//  Created by Phu Phan on 18/11/2021.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageView.layer.cornerRadius = imageView.frame.height / 2
        
        imageView.layer.masksToBounds = true
        
        imageView.layer.borderColor = UIColor.white.cgColor
        
        imageView.layer.borderWidth = CGFloat(3)
        
    }

}

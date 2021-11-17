//
//  FeedTableViewCell.swift
//  InstaClone
//
//  Created by Phu Phan on 18/11/2021.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var usernameTitleButton: UIButton!
    
    @IBOutlet weak var optionButton: UIButton!
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var commentButton: UIButton!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var viewCommentButton: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var postedImage: UIImageView!
    
    @IBOutlet weak var likeCount: UILabel!
    
    @IBOutlet weak var viewCommentLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        
        profileImage.layer.masksToBounds = true
        
        selectionStyle = .none
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func viewCommentDidTouched() {
        
    }
    
}

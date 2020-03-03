//
//  ProfileTableViewCell.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel        : UILabel!
    @IBOutlet weak var roleLabel        : UILabel!
    @IBOutlet weak var comapnyNameLabel : UILabel!
    @IBOutlet weak var tagLineLabel     : UILabel!
    @IBOutlet weak var followersLabel   : UILabel!
    @IBOutlet weak var followingLabel   : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

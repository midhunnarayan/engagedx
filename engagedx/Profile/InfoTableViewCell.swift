//
//  InfoTableViewCell.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleView    : UIStackView!
    @IBOutlet weak var infoIcon     : UIImageView!
    @IBOutlet weak var titleLabel       : UILabel!
    @IBOutlet weak var detailsLabel     : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

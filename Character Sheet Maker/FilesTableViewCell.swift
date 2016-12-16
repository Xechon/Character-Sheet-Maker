//
//  FilesTableViewCell.swift
//  Character Sheet Maker
//
//  Created by Programmer on 12/15/16.
//  Copyright © 2016 Joanie's Fish Daycare. All rights reserved.
//

import UIKit

class FilesTableViewCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    var data: FileBase!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

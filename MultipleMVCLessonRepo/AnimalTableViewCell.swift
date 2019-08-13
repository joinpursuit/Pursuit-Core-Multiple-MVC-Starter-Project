//
//  MovieTableViewCell.swift
//  MultipleMVCLessonRepo
//
//  Created by Kevin Natera on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    
    @IBOutlet weak var AnimalImageOutlet: UIImageView!
    
    @IBOutlet weak var NameLabelOutlet: UILabel!
    
    @IBOutlet weak var InfoLabelOutlet: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

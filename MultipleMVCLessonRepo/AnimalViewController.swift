//
//  MovieViewController.swift
//  MultipleMVCLessonRepo
//
//  Created by Kevin Natera on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

class AnimalViewController: UIViewController {

    var animal: ZooAnimal!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    @IBOutlet weak var descriptionOutlet: UITextView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nameLabel.text = animal.name
        animalImageView.image = UIImage(named: "\(animal.imageNumber)")
        descriptionOutlet.text = animal.info
    }
}

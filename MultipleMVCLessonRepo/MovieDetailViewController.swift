//
//  MovieDetailViewController.swift
//  MultipleMVCLessonRepo
//
//  Created by David Rifkin on 8/13/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var moviePosterImage: UIImageView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie.name
        genreLabel.text = movie.genre
        moviePosterImage.image = UIImage(named: movie.posterImageName)
        descriptionTextView.text = movie.description
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

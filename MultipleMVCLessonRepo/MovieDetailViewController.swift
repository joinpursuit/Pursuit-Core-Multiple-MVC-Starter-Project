import UIKit

class MovieDetailViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieDescriptionTextView: UITextView!
    
    // MARK: - Private Properties
    
    private var movie: Movie!
    
    // MARK: - Initializers
    
    static func fromStoryboard(usingMovie movie: Movie) -> MovieDetailViewController {
        let storyboard = UIStoryboard.init(name: "MovieDetailViewController", bundle: nil)
        guard let movieDetailVC = storyboard.instantiateViewController(withIdentifier: "MovieDetailViewController") as? MovieDetailViewController else {
            fatalError("Unexpected class type")
        }
        movieDetailVC.movie = movie
        return movieDetailVC
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateViews()
    }
    
    // MARK - Private Methods
    
    private func populateViews() {
        movieImageView.image = UIImage(named: movie.posterImageName)
        movieTitleLabel.text = movie.name
        movieDescriptionTextView.text = movie.description
    }
}

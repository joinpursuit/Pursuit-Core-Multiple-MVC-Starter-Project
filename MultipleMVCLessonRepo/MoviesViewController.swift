import UIKit

class MoviesViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var moviesTableView: UITableView!
    
    // MARK: - Private Properties
    
    private var movies = [Movie]() {
        didSet {
            moviesTableView.reloadData()
        }
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        loadData()
    }
    
    // MARK: - Private Methods
    
    private func configureTableView() {
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
    }
    
    private func loadData() {
        movies = Movie.allMovies
    }
}

extension MoviesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = moviesTableView.dequeueReusableCell(withIdentifier: "movieCell") else {
            fatalError("Unknown Cell Identifier")
        }
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = "\(movie.year)"
        return cell
    }
}

extension MoviesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMovie = movies[indexPath.row]
        let detailMovieVC = MovieDetailViewController.fromStoryboard(usingMovie: selectedMovie)        
        navigationController?.pushViewController(detailMovieVC, animated: true)
    }
}


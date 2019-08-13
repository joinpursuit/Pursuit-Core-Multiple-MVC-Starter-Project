//
//  ViewController.swift
//  MultipleMVCLessonRepo
//
//  Created by Benjamin Stone on 8/12/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return mammals.count
        case 1:
            return insects.count
        case 2:
            return reptiles.count
        case 3:
            return birds.count
        case 4:
            return amphibians.count
        default:
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Animals") as! AnimalTableViewCell
        
        switch indexPath.section {
        case 0:
            cell.AnimalImageOutlet.image = UIImage(named: "\(mammals[indexPath.row].imageNumber)")
            cell.NameLabelOutlet.text = mammals[indexPath.row].name
            cell.InfoLabelOutlet.text = "\(mammals[indexPath.row].classification) , \(mammals[indexPath.row].origin)"
        case 1:
            cell.AnimalImageOutlet.image = UIImage(named: "\(insects[indexPath.row].imageNumber)")
            cell.NameLabelOutlet.text = insects[indexPath.row].name
            cell.InfoLabelOutlet.text = "\(insects[indexPath.row].classification) , \(insects[indexPath.row].origin)"
        case 2:
            cell.AnimalImageOutlet.image = UIImage(named: "\(reptiles[indexPath.row].imageNumber)")
            cell.NameLabelOutlet.text = reptiles[indexPath.row].name
            cell.InfoLabelOutlet.text = "\(reptiles[indexPath.row].classification) , \(reptiles[indexPath.row].origin)"
        case 3:
            cell.AnimalImageOutlet.image = UIImage(named: "\(birds[indexPath.row].imageNumber)")
            cell.NameLabelOutlet.text = birds[indexPath.row].name
            cell.InfoLabelOutlet.text = "\(birds[indexPath.row].classification) , \(birds[indexPath.row].origin)"
        case 4:
            cell.AnimalImageOutlet.image = UIImage(named: "\(amphibians[indexPath.row].imageNumber)")
            cell.NameLabelOutlet.text = amphibians[indexPath.row].name
            cell.InfoLabelOutlet.text = "\(amphibians[indexPath.row].classification) , \(amphibians[indexPath.row].origin)"
        default:
            print("Damn")
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Mammals"
        case 1:
            return "Insects"
        case 2:
            return "Reptiles"
        case 3:
            return "Birds"
        case 4:
            return "Amphibians"
        default:
            return "Boii"
        }
    }

    
    @IBOutlet weak var tableOutlet: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIdentifier = segue.identifier else {fatalError("No identifier in segue")}
        
        
        switch segueIdentifier {
        case "listToDetailSegue":
            guard let animalDetailVC = segue.destination as? AnimalViewController else { fatalError("Unexpected segue view controller" )}
            
            guard let selectedIndexPath = tableOutlet.indexPathForSelectedRow else { fatalError("No row selected")}
            
            switch selectedIndexPath.section {
            case 0:
            animalDetailVC.animal = mammals[selectedIndexPath.row]
            case 1:
                animalDetailVC.animal = insects[selectedIndexPath.row]
            case 2:
                animalDetailVC.animal = reptiles[selectedIndexPath.row]
            case 3:
                animalDetailVC.animal = birds[selectedIndexPath.row]
            case 4:
                animalDetailVC.animal = amphibians[selectedIndexPath.row]
            default:
                print("Whyyyy")
            }
        default:
            fatalError("Unexpected segue identifier")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        
        self.tableOutlet.rowHeight = 125
    }


}


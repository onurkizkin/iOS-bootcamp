//
//  ViewController.swift
//  Odev7
//
//  Created by Onur Kızkın on 1.01.2024.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var personsTableView: UITableView!
    
    var personsList = [Persons]()
    
    var viewModel = HomePageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        personsTableView.delegate = self
        personsTableView.dataSource = self
        
        _ = viewModel.personsList.subscribe(onNext: { list in
            self.personsList = list
            self.personsTableView.reloadData()
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        viewModel.uploadPersons()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let person = sender as? Persons {
                let destinationVC = segue.destination as! PersonDetail
                destinationVC.person = person
            }
        }
    }
    
}

extension HomePage : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.search(searchWord: searchText)
    }
}

extension HomePage : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = personsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell") as! PersonsCell
        
        cell.labelName.text = person.name
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsList[indexPath.row]
        print("\(person.name!) selected")
        performSegue(withIdentifier: "toDetail", sender: person)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Sil") {contextualAction,view,bool in
            let person = self.personsList[indexPath.row]
            
            let alert = UIAlertController(title: "Deletion", message: "Should \(person.name!) be deleted?", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive) { action in
                self.viewModel.delete(id: person.id!)
            }
            alert.addAction(yesAction)
            
            self.present(alert, animated: true)
            
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}

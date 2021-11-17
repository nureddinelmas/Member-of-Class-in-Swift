//
//  ViewController.swift
//  Member of Class in Swift
//
//  Created by Nureddin Elmas on 2021-11-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var classTableView: UITableView!
    

    
   var indexPathGiden = 0
    var classList = [ModelClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        classTableView.dataSource = self
        classTableView.delegate = self
       
        let class3 = ModelClass(name: "Ali Emre Elmas", age: 12, image: UIImage(named: "göteborg")!)
        
        let class1 = ModelClass(name: "Nureddin Elmas", age: 41, image: UIImage(named: "stockholm")!)
        
        let class2 = ModelClass(name: "Seyma Elmas", age: 31, image: UIImage(named: "malmö")!)
        
        let class4 = ModelClass(name: "Sami Elmas", age: 9, image: UIImage(named: "mjölby")!)
        
        classList.append(class1)
        classList.append(class2)
        classList.append(class3)
        classList.append(class4)

        for i in classList {
            print(i.image as Any)
        }
        
        navigationItem.title = "My Class List"
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell()
        
        cell.textLabel?.text = String(classList[indexPath.row].name)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexPathGiden = indexPath.row
        performSegue(withIdentifier: "toClassDetailsViewController", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toClassDetailsViewController" {
            let destinationVC = segue.destination as! ClassDetailsViewController
            destinationVC.classListGelen.append(classList[indexPathGiden])
        }
    }
    


}



//
//  ClassDetailsViewController.swift
//  Member of Class in Swift
//
//  Created by Nureddin Elmas on 2021-11-17.
//

import UIKit

class ClassDetailsViewController: UIViewController {

    @IBOutlet weak var visaImage: UIImageView!
    @IBOutlet weak var visaAge: UILabel!
    @IBOutlet weak var visaName: UILabel!
    var classListGelen = [ModelClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        visaName.text = String(classListGelen[0].name)
        visaAge.text = String(classListGelen[0].age)
        visaImage.image = classListGelen[0].image
        
        

    }
    
}

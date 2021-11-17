//
//  ClassModel.swift
//  Member of Class in Swift
//
//  Created by Nureddin Elmas on 2021-11-17.
//

import UIKit

class ModelClass{
        var name : String = ""
        var age : Int = 0
        var image: UIImage?
        
            init(name: String, age: Int, image: UIImage)
            {
                self.image = image
                self.name = name
                self.age = age
            }
    
    
    func setData(){
        
        var classList = [ModelClass]()

    
        let class3 = ModelClass(name: "Ali Emre Elmas", age: 12, image: UIImage(named: "göteborg")!)
        
        let class1 = ModelClass(name: "Nureddin Elmas", age: 41, image: UIImage(named: "stockholm")!)
        
        let class2 = ModelClass(name: "Seyma Elmas", age: 31, image: UIImage(named: "malmö")!)
        
        let class4 = ModelClass(name: "Sami Elmas", age: 9, image: UIImage(named: "mjölby")!)
        
        
        classList.append(class1)
        classList.append(class2)
        classList.append(class3)
        classList.append(class4)
    }

}

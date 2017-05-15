//
//  Character.swift
//  TableViewsPt1
//
//  Created by Tennant Shaw on 5/14/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class Character: NSObject {
    var name: String
    var age: Int
    var address: String?
    
    init(name: String, age: Int, address: String?) {
        self.name = name
        self.age = age
        self.address = address
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Stark", "Omni-potent", "Holy", "Divine"]
            let nouns = ["Tiffany", "Kyle", "Krystal", "Turner"]
            let streetNames = ["Main", "Rolskilz", "Turnback", "Narrow"]
            let streetTypes = ["St.", "Ave.", "Ct.", "Cir."]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            var idx2 = arc4random_uniform(UInt32(streetNames.count))
            let randomStreetName = streetNames[Int(idx2)]
            idx2 = arc4random_uniform(UInt32(streetTypes.count))
            let randomStreetType = streetTypes[Int(idx2)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(80))
            let randomAddress = "\(randomStreetName) \(randomStreetType)"
            
            self.init(name: randomName, age: randomValue, address: randomAddress)
        } else {
            self.init(name: "", age: 0, address: nil)
        }
    }
}

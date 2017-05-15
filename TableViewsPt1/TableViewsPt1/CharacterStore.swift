//
//  CharacterStore.swift
//  TableViewsPt1
//
//  Created by Tennant Shaw on 5/14/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class CharacterStore {
    var allCharacters = [Character]()
    
    @discardableResult func createCharacter() -> Character {
        let newCharacter = Character(random: true)
        
        allCharacters.append(newCharacter)
        
        return newCharacter
    }
    
    init() {
        for _ in 0..<10 {
            createCharacter()
        }
    }
}

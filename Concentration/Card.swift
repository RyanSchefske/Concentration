//
//  Card.swift
//  Concentration
//
//  Created by Ryan Schefske on 8/18/19.
//  Copyright © 2019 Ryan Schefske. All rights reserved.
//

// View
import Foundation

struct Card: Hashable {
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

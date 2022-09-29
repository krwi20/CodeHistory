//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Kris Wittwer on 29/09/2022.
//

import Foundation

struct ScoreViewModel {
    
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}

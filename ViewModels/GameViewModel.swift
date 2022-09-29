//
//  GameViewModel.swift
//  Code History
//
//  Created by Kris Wittwer on 29/09/2022.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject { // the view model will emit events when changes are made to its published properties
    
    @Published private var game = Game() //  wrapped in the @Published modifier so our GameViewModel can notify any observers when changes are made to it like when a user makes a guess
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1)/ \(game.numberOfQuestions)"
    }
    
}

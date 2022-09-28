//
//  Question.swift
//  Code History
//
//  Created by Kris Wittwer on 28/09/2022.
//

import Foundation

struct Question { // question model
    let questionText: String // stores the actual question we want to display
    let possibleAnswers: [String] // stores an array of strings that the view displays as possible answers
    let correctAnswerIndex: Int // sotres the index of the correct answer in the possible answers array
}

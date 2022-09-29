//
//  Question.swift
//  Code History
//
//  Created by Kris Wittwer on 28/09/2022.
//

import Foundation

struct Question: Hashable { // question model // Add hashable conformance
    let questionText: String // stores the actual question we want to display
    let possibleAnswers: [String] // stores an array of strings that the view displays as possible answers
    let correctAnswerIndex: Int // sotres the index of the correct answer in the possible answers array
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                 "Steve Jobs",
                 "Linus Torvalds",
                 "Bill Gates",
                 "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                 "Simula",
                 "Python",
                 "Swift",
                 "C"
                 ],
                 correctAnswerIndex: 0)
    ]
    
}

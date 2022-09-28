//
//  ContentView.swift
//  Code History
//
//  Created by Kris Wittwer on 25/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
    questionText: "What was the first computer bug?",
    possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
    correctAnswerIndex: 2) // instance of Question
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        ZStack {
             mainColor.ignoresSafeArea() // otherwise safe areas will be default white
             VStack {
                 Text("1 / 10")
                     .font(.callout)
                     .multilineTextAlignment(.leading)
                     .padding()
                 Text(question.questionText) // Updated from hard-coded string
                     .font(.largeTitle)
                     .bold()
                     .multilineTextAlignment(.leading)
                 Spacer()
                 HStack {
                     Button(action: {
                         print("Tapped on Choice 1")
                     }, label: {
                         ChoiceTextView(choiceText: question.possibleAnswers[0]) // Updated from hard-coded string
                     })
                     Button(action: {
                         print("Tapped on Choice 2")
                     }, label: {
                         ChoiceTextView(choiceText: question.possibleAnswers[1]) // Updated from hard-coded string
                     })
                     Button(action: {
                         print("Tapped on Choice 3")
                     }, label: {
                         ChoiceTextView(choiceText: question.possibleAnswers[2]) // Updated from hard-coded string
                     })
                     Button(action: {
                         print("Tapped on Choice 4")
                     }, label: {
                         ChoiceTextView(choiceText: question.possibleAnswers[3]) // Updated from hard-coded string
                     })
                 }
             }
         }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

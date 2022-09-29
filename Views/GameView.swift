//
//  ContentView.swift
//  Code History
//
//  Created by Kris Wittwer on 25/09/2022.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
    questionText: "What was the first computer bug?",
    possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
    correctAnswerIndex: 2) // instance of Question
    
    /* The State property wrapper allows us to tell SwiftUI that one of the properties of our View can change. When we wrap a variable with the @State declaration, we are telling SwiftUI, “This variable can change. Update the screen if it does.” Then, when we assign a new value to any properties we have marked with @State, SwiftUI will compute the body property again to redraw the screen with the updated data. In our case, we want SwiftUI to update all of our views whenever the mainColor property changes (like when the user taps one of the buttons). */
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
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
                     
                     /* The definition starts with ForEach(). Within the parentheses, we provide the data we want to loop through. In our case, it’s a Range from 0 to the last index of possibleAnswers. Following that, we write an open curly brace and answerIndex in followed by a new line. Just like we would in a for-in loop, we give a name to the placeholder variable. Here, answerIndex will start at 0, then be assigned to 1, then 2, then 3. We can name this placeholder variable anything we like. */
                     
                     ForEach(0..<question.possibleAnswers.count) { answerIndex in
                         
                         Button(action: {
                             print("Tappes on option with the text: \(question.possibleAnswers[answerIndex])")
                             mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                         }, label: {
                             ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                         })
                         
                     }
                     
                 }
             }
         }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
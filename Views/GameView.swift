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
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea() // otherwise safe areas will be default white
            VStack {

                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                QuestionView(question: viewModel.currentQuestion)

             }
         }
        .background(NavigationLink(destination: Text("Game Over!"), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() }))
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

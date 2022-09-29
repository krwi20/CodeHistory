//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Kris Wittwer on 28/09/2022.
//

/* ChoiceTextView will encapsulate everything it needs to properly display a possible choice. This includes the choice text, the accent color for styling, and all of the modifiers the original view applied to the Text views. */

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}

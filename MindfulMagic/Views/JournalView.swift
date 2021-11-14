//
//  JournalView.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/14/21.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 50) {
                Text("Journaling Prompts").font(.largeTitle)
                Text("What qualities about yourself do you love the most?")
                Text("Write about the last time you laughed really hard. What was so funny?")
                Text("Write a letter to a person who has positively impacted you.")
                Text("Write about 5 songs that mean the most to you. Why do the lyrics speak to you? How do you relate to these songs? How do they make you feel when you hear them?")
                Text("Write a story about something you see outside.")
            }        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}

//
//  MeditationList.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/14/21.
//

import SwiftUI

struct MeditationList: View {
    var body: some View {
        NavigationView {
            List(meditations) { sitePage in
                    SiteRow(sitePage: sitePage)
                        .contentShape( Rectangle() )
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: sitePage.site)!)
                        }
            }
            .navigationTitle("Meditation")
        }
    }
}

struct MeditationList_Previews: PreviewProvider {
    static var previews: some View {
        MeditationList()
    }
}

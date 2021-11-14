//
//  ExcersizeList.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/14/21.
//

import SwiftUI

struct ExcersizeList: View {
    var body: some View {
        NavigationView {
            List(exercises) { sitePage in
                    SiteRow(sitePage: sitePage)
                        .contentShape( Rectangle() )
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: sitePage.site)!)
                        }
            }
            .navigationTitle("Exercise")
        }
    }
}

struct ExcersizeList_Previews: PreviewProvider {
    static var previews: some View {
        ExcersizeList()
    }
}

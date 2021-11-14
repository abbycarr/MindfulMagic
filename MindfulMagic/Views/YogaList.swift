//
//  YogaList.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/14/21.
//

import SwiftUI

struct YogaList: View {
    var body: some View {
        NavigationView {
            List(yogas) { sitePage in
                    SiteRow(sitePage: sitePage)
                        .contentShape( Rectangle() )
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: sitePage.site)!)
                        }
            }
            .navigationTitle("Yoga")
        }
    }
}

struct YogaList_Previews: PreviewProvider {
    static var previews: some View {
        YogaList()
    }
}

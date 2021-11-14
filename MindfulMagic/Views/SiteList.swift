//
//  SiteList.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/13/21.
//

import SwiftUI

struct SiteList: View {
    var body: some View {
        VStack{
            NavigationView {
                List(sitePages) { sitePage in
                        SiteRow(sitePage: sitePage)
                            .contentShape( Rectangle() )
                            .onTapGesture {
                                UIApplication.shared.open(URL(string: sitePage.site)!)
                            }
                }
                .navigationTitle("Resources")
            }
            NavigationView {
                ScrollView {
                    VStack{
                        NavigationLink(destination: YogaList()) {
                                            Text("Yoga")
                                        }
                        NavigationLink(destination: ExcersizeList()) {
                                            Text("Exercise")
                                        }
                        NavigationLink(destination: MeditationList()) {
                                            Text("Meditation")
                                        }
                        NavigationLink(destination: JournalView()) {
                                            Text("Journaling")
                                        }
                    }
                }
            }
        }
    }
}

struct SiteList_Previews: PreviewProvider {
    static var previews: some View {
        SiteList()
    }
}

//
//  SiteRow.swift
//  MindfulMagic
//
//  Created by Abby Carr on 11/13/21.
//

import SwiftUI

struct SiteRow: View {
    var sitePage: SitePage
    
    var body: some View {
        HStack {
            sitePage.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(sitePage.title)
            Spacer()
        }
    }
}

struct SiteRow_Previews: PreviewProvider {
    static var previews: some View {
        SiteRow(sitePage: sitePages[0])
    }
}

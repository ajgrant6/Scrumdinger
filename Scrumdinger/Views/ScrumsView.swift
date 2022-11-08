//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by AJ Grant on 11/7/22.
//

import SwiftUI

struct ScrumsView: View {
    var scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}

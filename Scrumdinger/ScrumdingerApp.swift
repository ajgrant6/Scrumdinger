//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by AJ Grant on 11/6/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}

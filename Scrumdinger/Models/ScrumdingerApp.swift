//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by मित्रा on 28/06/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
            ScrumsView(scrums: $scrums)
            }
        }
    }
}

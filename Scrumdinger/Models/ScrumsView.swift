//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by मित्रा on 28/06/2022.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach($scrums) { $scrums in
                NavigationLink(destination: DetailView(scrum: $scrums)) {
                CardView(scrum: scrums)
                }
                .listRowBackground(scrums.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
        }
    }
}
    
    struct ScrumsView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ScrumsView(scrums: .constant(DailyScrum.sampleData))
            }
        }
    }

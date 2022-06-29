//
//  ContentView.swift
//  Scrumdinger
//
//  Created by मित्रा on 28/06/2022.
//

import SwiftUI

struct MeetingView: View {
    @Binding var scrum: DailyScrum
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(scrum.theme.mainColor)
            VStack {
                Circle()
                    .strokeBorder(lineWidth: 24, antialiased: true)
                HStack{
                    Text("Speaker 1 of 3")
                    Spacer()
                    Button(action: {
    //                    Button Action Code goes here
                    }){
                        Image(systemName: "forward.fill")
                    }
                }
            }
            .padding()
            .foregroundColor(scrum.theme.accentColor)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
    }
}

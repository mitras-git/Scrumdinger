//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by मित्रा on 29/06/2022.
//

import SwiftUI

struct MeetingHeaderView: View {
    var body: some View {
        ProgressView(value: 5, total: 15)
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView()
    }
}

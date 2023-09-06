//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum))
                {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
            .padding(.all, 20)
        }
    }
        
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
 

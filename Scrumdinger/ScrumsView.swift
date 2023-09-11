//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State var isPresentingNewScrumView = false
    
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
                Button(action: {isPresentingNewScrumView = true}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
            .padding(.all, 20)
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
        }
    }
        
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
 

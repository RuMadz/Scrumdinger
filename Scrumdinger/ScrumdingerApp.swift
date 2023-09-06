//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/03.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
 

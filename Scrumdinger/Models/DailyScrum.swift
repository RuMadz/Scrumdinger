//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import Foundation

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID=UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        
        self.theme = theme
    }
}
 
extension DailyScrum {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID=UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    static var emptyScrum: DailyScrum {
        
            DailyScrum ( title: "", attendees: [], lengthInMinutes: 10, theme: .sky)
        
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(
            
            title: "Stratgey",
            attendees: ["Tiri","Momo","Tumi", "Ru"],
            lengthInMinutes: 30,
            theme: .bubblegum),
        DailyScrum( title: "Budget",
                    attendees: ["Tumi", "Ru", "Tsungi"],
                    lengthInMinutes: 60,
                    theme: .teal),
        DailyScrum(title: "Sales",
                   attendees: ["Matthew", "Mark", "Luke"],
                   lengthInMinutes: 20,
                   theme: .lavender)
    ]
    

    
}



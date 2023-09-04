//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Stratgey",
                   attendees: ["Tumi", "Ru", "Tiri"],
                   lengthInMinutes: 30,
                   theme: .oxblood),
        DailyScrum(title: "Budget",
                   attendees: ["Tumi", "Ru", "Tsungi"],
                   lengthInMinutes: 60,
                   theme: .teal),
        DailyScrum(title: "Sales",
                   attendees: ["Matthew", "Mark", "Luke"],
                   lengthInMinutes: 20,
                   theme: .lavender)
    ]
}

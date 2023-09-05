//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import SwiftUI


struct DetailView: View {
    let scrum: DailyScrum
    @State private var isPresentingEditView = false
    var body: some View {
        List{
            Section(header:Text("Meeting info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start meeting", systemImage: "timer")
                        .font(.headline)
                    .foregroundColor(.accentColor)}
                HStack{
                    Label("Duration", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) mins")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme",systemImage:"paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            .font(.headline)
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees){ attendee in
                    Label(attendee.name, systemImage: "person")
                }
                
            }
            .font(.headline)

        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit"){
                    isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack{
                DetailEditView()
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction){
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction){
                            Button("Done") {
                                isPresentingEditView = false
                            }
                        }

                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
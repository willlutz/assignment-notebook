//
//  ContentView.swift
//  assignment notebook
//
//  Created by will lutz on 1/30/24.
//

import SwiftUI

struct ContentView: View {
   @State private var assignments =
    [AssignmentItem(course: "math", description: "homework", dueDate: Date()),
     AssignmentItem(course: "science", description: "lab", dueDate: Date()),
     AssignmentItem(course: "history", description: "study", dueDate: Date())
    ]
    var body: some View {
      

        
        VStack {
            ForEach(assignments) { AssignmentItem in
            Text (AssignmentItem.description)
            }
 
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct AssignmentItem: Identifiable {
    var id = UUID()
        var course = String()
        var description = String()
        var dueDate = Date()
}

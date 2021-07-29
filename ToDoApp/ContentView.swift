//
//  ContentView.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/28.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title : String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}

struct ContentView: View {
    var tasks = [
        Task(title: "料理1", checked: true),
        Task(title: "料理2", checked: false),
        Task(title: "料理3", checked: true),
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(tasks) { task in
                    ListRow(task: task.title, isCheck: task.checked)
                }
                Text("Add")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("ToDo"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

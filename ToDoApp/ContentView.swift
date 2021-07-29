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
    var userData = UserData()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(userData.tasks) { task in
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

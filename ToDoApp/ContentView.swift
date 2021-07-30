//
//  ContentView.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/28.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else { return }
                        self.userData.tasks[index].checked.toggle()
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                Text("Add")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("ToDo"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            }, label: {
                Text("Delete")
            }))
        }
    }
    
    func DeleteTask() {
        let neccessaryTask = self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = neccessaryTask
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ListRow(task: "料理1", isCheck: true)
                ListRow(task: "料理2", isCheck: true)
                ListRow(task: "料理3", isCheck: true)
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

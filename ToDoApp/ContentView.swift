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
                HStack {
                    Text("□")
                    Text("A")
                }
                Text("B")
                Text("C")
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

//
//  UserData.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/29.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var tasks = [
        Task(title: "料理1", checked: true),
        Task(title: "料理2", checked: false),
        Task(title: "料理3", checked: true),
    ]
    
    @Published var isEditing: Bool = false
}

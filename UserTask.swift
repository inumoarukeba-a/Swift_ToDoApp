//
//  UserTask.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/29.
//

import SwiftUI

struct Task: Identifiable, Equatable {
    let id = UUID()
    var title : String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}

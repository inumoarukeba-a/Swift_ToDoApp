//
//  ListRow.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/29.
//

import SwiftUI

struct ListRow: View {
    let task: String
    
    var body: some View {
        HStack {
            Text("□")
            Text(task)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理")
    }
}

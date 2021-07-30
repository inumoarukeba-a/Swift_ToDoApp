//
//  ListRow.swift
//  ToDoApp
//
//  Created by Ataru Nakano on 2021/07/29.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    
    var body: some View {
        HStack {
            if isCheck {
                Text("✅")
                Text(task)
                    .strikethrough()
                    .fontWeight(/*@START_MENU_TOKEN@*/.ultraLight/*@END_MENU_TOKEN@*/)
            } else {
                Text("□")
                Text(task)
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task: "料理", isCheck: true)
    }
}

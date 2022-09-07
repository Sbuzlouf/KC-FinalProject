//
//  TaskRowView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 07/09/2022.
//

import SwiftUI

struct TaskRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Spacer()
            Text(item.title)
        }
        .font(.title2)
        .padding(.vertical, 8)
        .padding()
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First item!", isCompleted: false)
    static var item2 = ItemModel(title: "Second Item.", isCompleted: true)
    
    static var previews: some View {
        Group {
            TaskRowView(item: item1)
            TaskRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}

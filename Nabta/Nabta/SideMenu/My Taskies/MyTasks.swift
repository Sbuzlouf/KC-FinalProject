//
//  MyTasks.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 05/09/2022.
//

import SwiftUI

struct MyTasks: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                List {
                    ForEach(listViewModel.items) { item in
                        TaskRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("📝 مهامي")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("إضافة", destination: AddView())
            )
    }

}

struct MyTasks_Previews: PreviewProvider {
    static var previews: some View {
           MyTasks()
        .environmentObject(ListViewModel())
    }
}

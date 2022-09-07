//
//  AddView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 07/09/2022.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("اكتب شيئاً هنا...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("حفظ".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.BurntSienna)
                        .cornerRadius(10)
                })//: BUTTON
            }//: VSTACK
            .padding(14)
        }//: SCROLLVIEW
        .navigationTitle("🖊 أضف المهمة")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }//: FUNC
    
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "يجب أن تكون المهمة على الأقل ثلاث أحرف!!! 😨😰😱"
            showAlert.toggle()
            return false
        }
        return true
    }//: FUNC
    
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }//: FUNC
    
}


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                AddView()
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
               
                AddView()
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())

        }//: GROUP
    }
}

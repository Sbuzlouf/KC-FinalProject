//
//  ContentView.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var useerIsLoggedIn = false
    
    
    
    var body: some View {
        if useerIsLoggedIn {
            MainView()
        } else {
            content
        }
    }
    
    var content: some View {
        ZStack {
            Color.white
            
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [Color.DarkSeaGreen, .green], startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.5)
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(-135))
                .offset(y: -350)
            
            VStack(spacing: 20){
                Image("nabtah")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 200)
                    .padding(.bottom, 50)
                
                TextField("E-mail", text: $email)
                    .foregroundColor(.DarkLava)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("E-mail")
                            .foregroundColor(.DarkSeaGreen)
                    }//: PLACEHOLDER
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.DarkSeaGreen)
                
                SecureField("Password", text: $password)
                    .foregroundColor(.DarkLava)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.DarkSeaGreen)
                    }//: PLACEHOLDER
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.DarkSeaGreen)
                
                Button {
                    register()
                } label: {
                    Text("Sign up")
                        .bold()
                        .frame(width: 200, height: 60)
                        .background( RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(.linearGradient(colors: [Color.DarkSeaGreen], startPoint: .top, endPoint: .bottomTrailing)))
                        .foregroundColor(.white)
                        .padding(.top, 100)
                }//: BUTTON

                Button {
                    login()
                } label: {
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.BurntSienna)
                }

            }//: VSTACK
            .frame(width: 350)
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        useerIsLoggedIn.toggle()
                    }
                }
            }//: ONAPPEAR
        }//: HSTACK
        .ignoresSafeArea()
    }//: VAR CONTENT
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }//: FUNC
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

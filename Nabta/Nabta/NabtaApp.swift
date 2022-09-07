//
//  NabtaApp.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 30/08/2022.
//

import SwiftUI
import Firebase

@main
struct NabtaApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListViewModel())
        }
    }
}

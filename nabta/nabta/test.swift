//
//  test.swift
//  nabta
//
//  Created by Sumaya Buzlouf on 28/08/2022.
//

import SwiftUI

struct test: View {
    var body: some View {
        NavigationView {
            ScrollView {
                IndoorView()
                    .padding()
                IndoorView()
                    .padding()
                IndoorView()
                    .padding()
                IndoorView()
                    .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}


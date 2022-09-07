//
//  BackHidden.swift
//  Nabta
//
//  Created by Sumaya Buzlouf on 07/09/2022.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
}

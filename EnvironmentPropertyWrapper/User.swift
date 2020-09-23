//
//  User.swift
//  EnvironmentPropertyWrapper
//
//  Created by Mickael Mas on 23/07/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import Foundation
import SwiftUI

class User: ObservableObject {
    @Published var name = "Olivier"
    @Published var rank: Int = 1
    @Published var imageName: String = "people0"
}

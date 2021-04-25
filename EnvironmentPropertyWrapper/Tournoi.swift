//
//  Tournoi.swift
//  EnvironmentPropertyWrapper
//
//  Created by Mickael Mas on 23/09/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import Foundation

class Tournoi: ObservableObject {
    @Published var name: String = ""
    @Published var isIndoor = false
}

//
//  PlaceholderView.swift
//  EnvironmentPropertyWrapper
//
//  Created by Mickael Mas on 23/07/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct PlaceholderImage: View {
    @EnvironmentObject var user: User
    
    var position: Int = 1
    var body: some View {
        Image(user.rank == position ? user.imageName : "people-placeholder")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .frame(width: 90, height: 90)
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 5, y: 5)
            .padding()
    }
}

struct PlaceholderImage_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderImage()
    }
}

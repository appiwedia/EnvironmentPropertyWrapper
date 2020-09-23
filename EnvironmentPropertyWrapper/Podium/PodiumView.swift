//
//  PodiumView.swift
//  EnvironmentPropertyWrapper
//
//  Created by Mickael Mas on 23/07/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct PodiumView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text(self.user.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            if user.rank == 1 {
                Text("🥇")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            } else if user.rank == 2 {
                Text("🥈")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            } else if user.rank == 3 {
                Text("🥉")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            } else {
                Text("😧")
                .font(.largeTitle)
                .fontWeight(.heavy)
            }
            
            ZStack(alignment: .top) {
                PlaceholderImage(position: 1)
                    .offset(x: 0, y: 10)
                
                PlaceholderImage(position: 2)
                    .offset(x: -100, y: 60)
                
                PlaceholderImage(position: 3)
                    .offset(x: 100, y: 80)
                Image("podium")
            }
            
            if user.rank == 1 {
                Text("✌️ Félicitations ! 💪")
                    .font(.title)
                    .fontWeight(.heavy)
            }
            
            if user.rank > 3 {
                Text("Encore un effort... tu es à la \(user.rank) ème place")
                    .font(.subheadline)
                    .fontWeight(.regular)
            }
        }
    }
}


struct PodiumView_Previews: PreviewProvider {
    static var previews: some View {
        PodiumView()
    }
}

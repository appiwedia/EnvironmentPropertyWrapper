//
//  ContentView.swift
//  EnvironmentPropertyWrapper
//
//  Created by Mickael Mas on 23/07/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: User
    
    @State private var showDetail = false
    
    let indexes = Array(1...10)
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Prénom", text: $user.name) .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                Text("Position")
                    .font(.headline)
                Picker(selection: self.$user.rank, label: Text("")) {
                    ForEach(indexes, id: \.self) { index in
                        Text("n° \(index)").tag(index)
                    }
                }
                .labelsHidden()
                
                Button("Voir les résultats 🏆") {
                    self.showDetail.toggle()
                }.foregroundColor(.white)
                    .padding()
                    .background(
                    RoundedRectangle(cornerRadius: 20, style: .circular).fill(Color.blue)
                )
                
                // Permet d'activer la navigation en cliquant sur le bouton
                NavigationLink(destination: PodiumView(), isActive: $showDetail) {
                    EmptyView()
                }
                
            }
            .navigationBarTitle("Mon classement")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



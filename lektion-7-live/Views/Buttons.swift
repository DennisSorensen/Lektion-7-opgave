//
//  Buttons.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack {
            //En simpel UIKit agtig knap
            Button("Klik mig") {
                print ("klikket")
            }.font(.title)
            
            // Den avancerede action knap
            Button(action: {
                print ("ACTION")
            }) {
                // Design
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                    
                    Text("KLIK MIG")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }.shadow(radius: 10)
            }
            
            Button(action: {
                print ("make the world great again")
            }) {
                // Design
                DonaldView()
            }.buttonStyle(PlainButtonStyle())
            
            
            
            
            
            
            
            
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

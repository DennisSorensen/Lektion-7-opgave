//
//  SluppertView.swift
//  lektion-6-forberedelse
//
//  Created by Henrik Gregersen on 16/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

// Lavet som en kopi af DonaldView

// TODO: Gør sluppert viewet dynamisk så det kan udfyldes med en enkelt slubbert i stedet for at det er hardkodet til Donald Trump

struct SluppertView: View {
    var body: some View {
        VStack {
            Image("Donald")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 120, height: 40)
                    .foregroundColor(.blue)
                Text("Hello, World!").foregroundColor(.white)
            }
            
            
        }.padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5.0)
        
    }
}

struct SluppertView_Previews: PreviewProvider {
    static var previews: some View {
        SluppertView()
    }
}

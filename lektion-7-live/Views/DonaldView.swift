//
//  DonaldView.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct DonaldView: View {
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


struct DonaldView_Previews: PreviewProvider {
    static var previews: some View {
        DonaldView()
    }
}

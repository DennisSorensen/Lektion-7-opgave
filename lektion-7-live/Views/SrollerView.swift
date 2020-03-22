//
//  SrollerView.swift
//  lektion-6-live
//
//  Created by Henrik Gregersen on 18/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct SrollerView: View {
    
    let banditter = Sluppert.slupperter
    
    var body: some View {
        
        List {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(banditter) {sluppert in
                        SluppertView()
                    }.padding()
                }

            }

            
            ForEach(0..<40) {tal in
                Text("\(tal)")
            }

            
        }
        
        
    }
}

struct SrollerView_Previews: PreviewProvider {
    static var previews: some View {
        SrollerView()
    }
}

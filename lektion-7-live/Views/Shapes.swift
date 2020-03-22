//
//  Shapes.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 100.0, height: 100.0)
            Rectangle()
                .frame(width: 100.0, height: 100.0)
            Ellipse()
                .fill(Color.green)
                .frame(width: 100, height: 150)
            Capsule()
                .frame(width: 100.0, height: 50)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 200.0, height: 100.0)
            
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

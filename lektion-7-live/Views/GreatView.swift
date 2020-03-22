//
//  GreatView.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct GreatView: View {
    var body: some View {
        Image("GreatTrump")
        .resizable()
        .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct GreatView_Previews: PreviewProvider {
    static var previews: some View {
        GreatView()
    }
}

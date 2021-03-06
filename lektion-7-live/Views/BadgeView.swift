//
//  BadgeView.swift
//  lektion-7-live
//
//  Created by Dennis Sørensen on 22/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct BadgeView: View {
    
    @Binding var badgeText : String
    
    
    var body: some View {
        GeometryReader { geoProxy in
            
            HStack {
                if !self.badgeText.isEmpty {
                    Text(self.badgeText)
                        .padding(10)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(Font.system(size: 12).bold())
                }
                Spacer()
            }.padding(.leading, 10)
                .offset(x: 0, y: -(geoProxy.frame(in: .local).size.height / 2) + 20)
            
            
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    
    @State static var badge1 : String = "4711"
    @State static var badge2 : String = ""
    @State static var badge3 : String = "1"
    
    static var previews: some View {
        
        Group {
            BadgeView(badgeText: $badge1)
            BadgeView(badgeText: $badge2).previewLayout(.fixed(width: 200, height: 200))
            BadgeView(badgeText: $badge3).previewLayout(.fixed(width: 300, height: 300))
        }
    }
}

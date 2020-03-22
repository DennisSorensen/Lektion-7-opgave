//
//  ForEach_Backup.swift
//  lektion-6-live
//
//  Created by Henrik Gregersen on 18/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ForEach_Backup: View {
    
    // Vi indsætter en variabel til at holde vores model
    let banditter = Sluppert.slupperter
    
    var body: some View {
               
        List (0..<5) { tal in
            HStack {
            Text("\(tal)")                            .font(.title)
                Spacer()
                Button ("KLIKMIG") {
                    print("Klikket på nr \(tal)")
                }
            .padding()
                           .background(Color("Kapitalist"))
                    .foregroundColor(.white)
            }
        }
    }
}


struct ForEach_Backup_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_Backup()
    }
}

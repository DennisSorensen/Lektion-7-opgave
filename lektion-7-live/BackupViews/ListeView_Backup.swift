//
//  ListeView_Backup.swift
//  lektion-6-live
//
//  Created by Henrik Gregersen on 18/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ListeView_Backup: View {
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

struct ListeView_Backup_Previews: PreviewProvider {
    static var previews: some View {
        ListeView_Backup()
    }
}

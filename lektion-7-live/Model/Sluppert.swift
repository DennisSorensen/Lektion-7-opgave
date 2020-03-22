//
//  Sluppert.swift
//  lektion-6-forberedelse
//
//  Created by Henrik Gregersen on 16/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

// En datamodel der er identifiable dvs swiftUI, kan se hver eneste instans som unik
// Identifiable er en protokol, og den kræver at en instans har en variabel med navnet id
// UUID() er en Universal Unik Identifier - den er altid unik (i stil med GUID hvis i kender til det.
struct Sluppert: Identifiable {
    var id = UUID()
    var navn: String
    var profilFoto: Image
    var partiFarve: Color
}

extension Sluppert {
    static let slupperter = [
        Sluppert(navn: "Donald Trump", profilFoto: Image("Donald"), partiFarve: Color("Kapitalist")),
        Sluppert(navn: "Putin", profilFoto: Image("Putin"), partiFarve: Color("Socialist")),
        Sluppert(navn: "Xi Jinping", profilFoto: Image("Xi"), partiFarve: Color("Socialist")),
        Sluppert(navn: "Mette Frederiksen", profilFoto: Image("Mette"), partiFarve: Color("Socialist"))
    ]
}

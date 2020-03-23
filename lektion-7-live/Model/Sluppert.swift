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
final class Sluppert: Identifiable, ObservableObject { //final er låst, den kan ikke ændres yderligere
    //ObervableObject søreger for at objektet bliver til en reference
    var id = UUID()
    @Published var navn: String
    @Published var profilFoto: Image
    @Published var partiFarve: Color
    @Published var badgeText : String = "" //Published gør at den sikre sig at trigger en update på ui når der sker en ændring
    
    init(navn: String, profilFoto: Image, partiFarve: Color) {
        self.navn = navn
        self.profilFoto = profilFoto
        self.partiFarve = partiFarve
    }
}

extension Sluppert {
    static let slupperter = [
        Sluppert(navn: "Donald Trump", profilFoto: Image("Donald"), partiFarve: Color("Kapitalist")),
        Sluppert(navn: "Putin", profilFoto: Image("Putin"), partiFarve: Color("Socialist")),
        Sluppert(navn: "Xi Jinping", profilFoto: Image("Xi"), partiFarve: Color("Socialist")),
        Sluppert(navn: "Mette Frederiksen", profilFoto: Image("Mette"), partiFarve: Color("Socialist"))
    ]
}

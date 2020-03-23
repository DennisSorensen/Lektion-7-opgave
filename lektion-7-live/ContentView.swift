//
//  ContentView.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var senesteSluppert : SenesteSluppert
    
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.colorScheme) var currentColorSceme
    
    // Vi indsætter en variabel til at holde vores model
    let banditter = Sluppert.slupperter
    
    @State private var valgtKandidatIndex = 0
    
    @State private var donationsBelobText = ""
    
    @State private var stemmerPaaKandiat = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker (selection: $valgtKandidatIndex, label: Text("Vælg kandidat")) {
                        ForEach(0..<self.banditter.count) {
                            banditIndex in
                            Text(self.banditter[banditIndex].navn)
                        }
                    }
                    
                }
                Section {
                    // Felt vi kan taste et beløb i
                    TextField("Indtast Beløb", text: $donationsBelobText)
                        .keyboardType(.decimalPad)
                    
                    HStack {
                    Image("Donald")
                    .resizable()
                        .frame(width:25, height: 25)
                        Text("Sluppert")
                    }
                }
                
                if !self.donationsBelobText.isEmpty {
                    Section {
                        Toggle(isOn: $stemmerPaaKandiat) {
                            Text ("Stemmer på kandidaten")
                        }
                        
                    }
                }
                
                Section {
                    Button("Betal \(donationsBelobText) nu") {
                        print ("Kandidaten siger tak")
                    }
                }
                
            }.navigationBarTitle("Støt valgkampen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct SenesteSluppertView : View {
    @EnvironmentObject var senesteSluppert : SenesteSluppert
    
    let banditter = Sluppert.slupperter
    
    var body : some View {
        SluppertView(sluppert: self.banditter[self.senesteSluppert.senesteSluppertIndex])
    }
}

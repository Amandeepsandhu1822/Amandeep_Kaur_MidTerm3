//
//  ContentView.swift
//  Amandeep_Kaur_MidTerm
//
//  Created by Amandeep Kaur on 2023-02-09.
//

import SwiftUI


struct ContentView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        VStack {
           
            Text("Amandeep Kaur").font(.largeTitle)
                    .padding(36.0)
                
            Button("Let's Go") {
                AmanNotification.generaterNotification(title: "Caution", body: "Too fast!")
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

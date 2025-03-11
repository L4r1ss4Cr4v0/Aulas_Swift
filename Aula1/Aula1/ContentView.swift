//
//  ContentView.swift
//  Aula1
//
//  Created by COTEMIG on 10/03/25.
//

import SwiftUI
struct ContentView: View {
@State private var humanage: String = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de idade canina")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            TextField("Digite a idade humana", text: $humanage)
            
            }
        }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

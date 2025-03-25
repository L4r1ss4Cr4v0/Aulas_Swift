//
//  ContentView.swift
//  Aula1
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dogAge: String = ""
    @State private var humanAge: String = ""
    
    func calculateDogAge(){
        if let age = Int(humanAge){
            let result = age * 7
            dogAge = "\(result) anos"
        } else{
            dogAge = "Digite um número válido"
        }
    }
    
   func limpartela() {
       humanAge = ""
       dogAge = ""
   }
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange,Color.yellow,Color.green, Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomLeading)
            
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("cachorro")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text("Calculadora de idade canina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                TextField("Digite a idade humana",text:
                            $humanAge)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .frame(width:250)
                
                Button(action: calculateDogAge){
                    Text("Calcular")
                        .padding()
                        .frame(width:150)
                        .background(Color.mint)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: limpartela){
                    Text("Limpar tela")
                        .padding()
                        .frame(width:150)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                 
               
              
                
                if !dogAge.isEmpty {
                    Text("Idade em anos caninos :\(dogAge)")
                        .font(.headline)
                        .padding()
                }
              
                
            }
        }

        }
    struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
        
}




            
            
    
                
            
        
    

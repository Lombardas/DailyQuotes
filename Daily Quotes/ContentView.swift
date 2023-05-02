//
//  ContentView.swift
//  Daily Quotes
//
//  Created by Anastasio Del Toro Almansa on 01/05/2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    
    /* let quotes: [Quotes] = [Quotes(author: "Albert Einstein", quote: "El problema del hombre no está en la bomba atómica, sino en su corazón.", quoteIcon: "person.fill.questionmark"),
     Quotes(author: "Mahatma Gandhi", quote: "No hay caminos para la paz; la paz es el camino.", quoteIcon: "person.fill.questionmark"),
     Quotes(author: "John Lennon", quote: "Haz el amor y no la guerra.", quoteIcon: "person.fill.questionmark"),
     Quotes(author: "Jacinto Benavente", quote: "Lo peor que hacen los malos es obligarnos a dudar de los buenos .", quoteIcon: "person.fill.questionmark"),
     Quotes(author: "Plato", quote: "El cuerpo humano es el carruaje; el yo, el hombre que lo conduce; el pensamiento son las riendas, y los sentimientos, los caballos.", quoteIcon: "person.fill.questionmark")]
     */
    
    
    
    
    var body: some View {
        
        
        
        VStack{
            
            
           Text("Hello, thanks for downloading this app. You can now add Daily Quotes widget to your Home!")
            Text("You will see different quotes every day from the below categories:")
            
                .padding()
                
            HStack{
                
                    Image("author")
                        .resizable()
                        .frame(width: 120, height: 126)
                        .cornerRadius(65)
                        .shadow(radius: 15)
                    
                    Text("Software Engineer with experience in several languages and technologies. Getting deep into iOS development. Fell free to check out my LinkedIn and other portfolio apps using the below links.")
               
                
            }.padding()
            
            
        }.onAppear { WidgetCenter.shared.reloadAllTimelines()}
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




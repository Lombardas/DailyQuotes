//
//  ContentView.swift
//  Daily Quotes
//
//  Created by Anastasio Del Toro Almansa on 01/05/2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    
    var quote: Quote {
        /*
        if let userdefaults = UserDefaults(suiteName: "group.com.tasioalmansa.horoscope") {
            
            if let author = userdefaults.string(forKey: "author" )
            {
                if let quote = userdefaults.string(forKey: "quote" ) {
                    
                    return Quote(author: author, quote: quote)
                }
            }
        }
        return Quote(author: "Nelson Mandela", quote: "The greatest glory in living lies not in never falling, but in rising every time we fall.")
        */
        return Quote(author: "Nelson Mandela", quote: "The greatest glory in living lies not in never falling, but in rising every time we fall.")
    } //End Quote - Computed variable
     
    var body: some View {
        VStack{
        Text("Hello, thanks for downloading this app. You can now add Daily Quotes widget to your Home!")
            .padding()
        Text("You can now go to your Home screen, enter on edit mode (press and hold) and click on '+' to add 'Daily Quotes' Widget.")
        VStack{
            Spacer()
            HStack{
                Image(systemName: "person.fill.questionmark")
                    .resizable()
                    .frame(width: 32, height: 32)
                Text(quote.author)
                    .font(.title2)
                    .bold()
            }
            
            Text(quote.quote)
                .font(.subheadline)
            //.scaledToFit()
            Spacer()
            Button {
                WidgetCenter.shared.reloadAllTimelines()
            } label:  {
            Text("Restart Widget")
            }.buttonStyle(.bordered)
            

        }.padding()
    }//End VStack principal
         
    }//.onAppear {WidgetCenter.shared.reloadAllTimelines()}
        
    
}// End View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



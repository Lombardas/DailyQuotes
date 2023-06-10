//
//  ContentView.swift
//  Daily Quotes
//
//  Created by Anastasio Del Toro Almansa on 01/05/2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
   
        
        var body: some View {
            VStack{
                Text("Hello, thanks for downloading this app. You will get now daily motivational/inspirational quotes from important personalities!")
                    .padding()
                Image("quote")
                    .resizable()
                    .frame(width: 180,height: 180)
                    .clipShape(Circle())
               
                    
                Text("You can now go to your Home screen, enter on edit mode (press and hold) and click on '+' to add 'Daily Quotes' Widget.")
                    .padding()
                Spacer()
            }.padding()
            
            
        }// End View
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }
    


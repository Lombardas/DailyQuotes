//
//  DailyQuote.swift
//  DailyQuote
//
//  Created by Anastasio Del Toro Almansa on 01/05/2023.
//

import WidgetKit
import SwiftUI

struct QuoteProvider: TimelineProvider {
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<QuoteEntry>) -> Void) {
        
        var entries : [QuoteEntry] = []
        
        
        
        
        
        entries.append(QuoteEntry(date: Date(),author: "Albert Einstein", quote: "El problema del hombre no está en la bomba atómica, sino en su corazón.", categoryIcon: "person.fill.questionmark"))
        
        entries.append(QuoteEntry(date: Date().addingTimeInterval(5),author: "Mahatma Gandhi", quote: "No hay caminos para la paz; la paz es el camino.", categoryIcon: "person.fill.questionmark"))
        
        entries.append(QuoteEntry(date: Date().addingTimeInterval(10),author: "John Lennon", quote: "Haz el amor y no la guerra.", categoryIcon: "person.fill.questionmark"))
        
        entries.append(QuoteEntry(date: Date().addingTimeInterval(15),author: "Jacinto Benavente", quote: "Lo peor que hacen los malos es obligarnos a dudar de los buenos.", categoryIcon: "person.fill.questionmark"))
        
        entries.append(QuoteEntry(date: Date().addingTimeInterval(20),author: "Plato", quote: "El cuerpo humano es el carruaje; el yo, el hombre que lo conduce; el pensamiento son las riendas, y los sentimientos, los caballos.", categoryIcon: "person.fill.questionmark"))
        
        completion(Timeline(entries: entries, policy: .atEnd))
        
    }
    
    
    func placeholder(in context: Context) -> QuoteEntry {
        QuoteEntry(date: Date(),author: "Albert Einstein",quote: "Dos cosas son infinitas: la estupidez humana y el universo; y no estoy seguro de lo segundo.", categoryIcon: "x.squareroot")
    }
    
    func getSnapshot(in context: Context, completion: @escaping (QuoteEntry) -> Void) {
       completion(QuoteEntry(date: Date(),author: "Albert Einstein",quote: "Dos cosas son infinitas: la estupidez humana y el universo; y no estoy seguro de lo segundo.", categoryIcon: "x.squareroot"))
    }
    
    
    
}

struct QuoteEntry: TimelineEntry {
    var date: Date
    
    let author: String
    let quote: String
    
    let categoryIcon: String
    
    
}

struct DailyQuoteEntryView : View {
    var entry: QuoteProvider.Entry

    
    @Environment(\.widgetFamily) var family
    
    
    var body: some View {
        VStack{
            Text("Your quote for today:")
                .font(.subheadline)
                
            HStack{
                Image(systemName: entry.categoryIcon)
                    .resizable()
                    .frame(width: 32, height: 32)
                Text(entry.author)
                    .font(.title2)
                    .bold()
            }
            Text(entry.quote)
                .font(.subheadline)
        }.padding()
        
    }
}

struct DailyQuote: Widget {
    let kind: String = "Daily Quote"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: QuoteProvider()) { entry in
            DailyQuoteEntryView(entry: entry)
        }
        .configurationDisplayName("Daily Quote")
        .description("Get a personalized quote every day.")
        .supportedFamilies([.systemMedium])
    }
}

struct DailyQuote_Previews: PreviewProvider {
    static var previews: some View {
        DailyQuoteEntryView(entry: QuoteEntry(date: Date(),author: "Albert Einstein",quote: "Dos cosas son infinitas: la estupidez humana y el universo; y no estoy seguro de lo segundo.", categoryIcon: "x.squareroot"))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

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
        
        /****************DECLARATION OF ARRAY WITH QUOTES******************/
        
        var quotes : [Quote] = []
        
        quotes.append(Quote(author: "Nelson Mandela", quote: "The greatest glory in living lies not in never falling, but in rising every time we fall."))
        
        quotes.append(Quote(author: "Walt Disney", quote: "The way to get started is to quit talking and begin doing."))
        
        quotes.append(Quote(author: "Steve Jobs", quote: "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking."))
        
        quotes.append(Quote(author: "Eleanor Roosevelt", quote: "If life were predictable it would cease to be life, and be without flavor."))
        
        quotes.append(Quote(author: "Oprah Winfrey", quote: "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough."))
        
        
        quotes.append(Quote(author: "James Cameron", quote: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success."))
        
        quotes.append(Quote(author: "John Lennon", quote: "Life is what happens when you're busy making other plans."))
        
        quotes.append(Quote(author: "Mother Teresa", quote: "Spread love everywhere you go. Let no one ever come to you without leaving happier. "))
        
        quotes.append(Quote(author: "Franklin D. Roosevelt", quote: "When you reach the end of your rope, tie a knot in it and hang on."))
        
        quotes.append(Quote(author: "Margaret Mead", quote: "Always remember that you are absolutely unique. Just like everyone else."))
        
        quotes.append(Quote(author: "Robert Louis Stevenson", quote: "Don't judge each day by the harvest you reap but by the seeds that you plant."))
        
        quotes.append(Quote(author: "Eleanor Roosevelt", quote: "The future belongs to those who believe in the beauty of their dreams."))
        
        quotes.append(Quote(author: "Benjamin Franklin", quote: "Tell me and I forget. Teach me and I remember. Involve me and I learn."))
        
        quotes.append(Quote(author: "Helen Keller", quote: "The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart."))
        
        quotes.append(Quote(author: "Aristotle", quote: "It is during our darkest moments that we must focus to see the light."))
        
        quotes.append(Quote(author: "Anne Frank", quote: "Whoever is happy will make others happy too."))
        
        quotes.append(Quote(author: "Ralph Waldo Emerson", quote: "Do not go where the path may lead, go instead where there is no path and leave a trail."))
        
        quotes.append(Quote(author: "Maya Angelou", quote: "You will face many defeats in life, but never let yourself be defeated."))
        
        quotes.append(Quote(author: "Abraham Lincoln", quote: "In the end, it's not the years in your life that count. It's the life in your years."))
        
        quotes.append(Quote(author: "Babe Ruth", quote: "Never let the fear of striking out keep you from playing the game. "))
        
        quotes.append(Quote(author: "Helen Keller", quote: "Life is either a daring adventure or nothing at all."))
        
        quotes.append(Quote(author: "Thomas A. Edison", quote: "Many of life's failures are people who did not realize how close they were to success when they gave up."))
        
        quotes.append(Quote(author: "Dr. Seuss", quote: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose."))
        
        quotes.append(Quote(author: "Henry David Thoreau", quote: "Go confidently in the direction of your dreams! Live the life you've imagined."))
        
        quotes.append(Quote(author: "Albert Einstein", quote: "The important thing is not to stop questioning. Curiosity has its own reason for existing."))
        
        quotes.append(Quote(author: "Oscar Wilde", quote: "Be yourself; everyone else is already taken."))
        
        quotes.append(Quote(author: "Marilyn Monroe", quote: "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best."))
        
        quotes.append(Quote(author: "Albert Einstein", quote: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe."))
        
        quotes.append(Quote(author: "Marcus Tullius Cicero", quote: "A room without books is like a body without a soul."))
        
        quotes.append(Quote(author: "Mae West", quote: "You only live once, but if you do it right, once is enough."))
        
        quotes.append(Quote(author: "Mahatma Gandhi", quote: "Be the change that you wish to see in the world."))
        
        quotes.append(Quote(author: "J.K. Rowling", quote: "If you want to know what a man's like, take a good look at how he treats his inferiors, not his equals."))
        
        quotes.append(Quote(author: "Mark Twain", quote: "If you tell the truth, you don't have to remember anything."))
        
        quotes.append(Quote(author: "Maya Angelou", quote: "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel."))
        
        quotes.append(Quote(author: "Elbert Hubbard", quote: "A friend is someone who knows all about you and still loves you."))
        
        quotes.append(Quote(author: "Oscar Wilde", quote: "Always forgive your enemies; nothing annoys them so much."))
        
        quotes.append(Quote(author: "Martin Luther King Jr.", quote: "Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that."))
        
        quotes.append(Quote(author: "Mahatma Gandhi", quote: "Live as if you were to die tomorrow. Learn as if you were to live forever."))
        
        quotes.append(Quote(author: "Stephen Chbosky", quote: "We accept the love we think we deserve."))
        
        quotes.append(Quote(author: "Friedrich Nietzsche", quote: "Without music, life would be a mistake."))
        
        quotes.append(Quote(author: "Ralph Waldo Emerson", quote: "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment."))
        
        quotes.append(Quote(author: "Andre Gide, Autumn Leaves", quote: "It is better to be hated for what you are than to be loved for what you are not."))
        
        quotes.append(Quote(author: "Jane Austen", quote: "The person, be it gentleman or lady, who has not pleasure in a good novel, must be intolerably stupid."))
        
        quotes.append(Quote(author: "Marilyn Monroe", quote: "Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring."))
        
        quotes.append(Quote(author: "Albert Einstein", quote: "There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle"))
        
        quotes.append(Quote(author: "John Green", quote: "As he read, I fell in love the way you fall asleep: slowly, and then all at once."))
        
        quotes.append(Quote(author: "William Shakespeare", quote: "The fool doth think he is wise, but the wise man knows himself to be a fool."))
        
        quotes.append(Quote(author: "Maurice Switzer", quote: "It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it."))
        
        quotes.append(Quote(author: "Mark Twain", quote: "Whenever you find yourself on the side of the majority, it is time to reform (or pause and reflect)."))
        
        quotes.append(Quote(author: "Thomas A. Edison", quote: "I have not failed. I've just found 10,000 ways that won't work."))
        
        
        /***************************************************************************************/
        let date = Date()
        var interval : Double = 0
        
        for item in quotes
        {
            
            entries.append(QuoteEntry(date: date.addingTimeInterval(interval), author: item.author, quote: item.quote, categoryIcon: "person.fill.questionmark"))
            interval += 3600
        }
        
        
        
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


struct Quote {
    var author: String
    var quote: String
   // var quoteIcon: String
    
    init(author: String, quote: String) {
        self.author = author
        self.quote = quote
        //self.quoteIcon = quoteIcon
    }
    
   
    }
    


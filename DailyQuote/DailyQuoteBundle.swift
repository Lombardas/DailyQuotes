//
//  DailyQuoteBundle.swift
//  DailyQuote
//
//  Created by Anastasio Del Toro Almansa on 01/05/2023.
//

import WidgetKit
import SwiftUI

@main
struct DailyQuoteBundle: WidgetBundle {
    var body: some Widget {
        DailyQuote()
        DailyQuoteLiveActivity()
    }
}

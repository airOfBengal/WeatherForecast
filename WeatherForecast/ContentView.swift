//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Md. Atiqul Islam on 13/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Wed", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Thu", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Fri", isRainy: true, high: 60, low: 40)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

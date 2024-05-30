//
//  ContentView.swift
//  weatherapp
//
//  Created by Defined Me on 27/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            GradientView(isNight:isNight)
            VStack{
                CityView(city: "Yangon, YGN")
                
                CenterMainView(image: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                HStack (spacing: 20){
                    DayView(dayOfWeek: "MON", image: "cloud.sun.fill", temperature: 55)
                    DayView(dayOfWeek: "TUE", image: "sun.max.fill", temperature: 60)
                    DayView(dayOfWeek: "WED", image: "wind.snow", temperature: 76)
                    DayView(dayOfWeek: "THU", image: "sunset.fill", temperature: 43)
                    DayView(dayOfWeek: "FRI", image: "snow", temperature: 52)
                }
                
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButtom(title: isNight ?  "Change Day Time" :"Change Night Time", color: isNight ? .white :.blue, backgroundColor: isNight ? .gray : .white)
                })
               
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayView: View {
    
    var dayOfWeek:String
    var image:String
    var temperature:Int
    
    var body: some View {
        
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundColor(.pink)
//                .foregroundStyle(.pink,.orange,.green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct GradientView: View {
    var isNight:Bool
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [ isNight ? .black
//                                                    : .blue ,isNight ? .gray : Color("lightBlue")]), startPoint:.topLeading, endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityView: View {
    var city :String
    var body: some View {
        Text(city)
            .font(.system(size: 30,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CenterMainView: View {
    var image:String;
    var temperature:Int
    var body: some View {
        VStack (spacing:20){
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 60,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,60)
    }
}


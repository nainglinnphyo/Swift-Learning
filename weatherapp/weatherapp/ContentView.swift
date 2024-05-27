//
//  ContentView.swift
//  weatherapp
//
//  Created by Defined Me on 27/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint:.topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Yangon, YGN")
                    .font(.system(size: 30,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

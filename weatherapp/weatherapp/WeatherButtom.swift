//
//  WeatherButtom.swift
//  weatherapp
//
//  Created by Defined Me on 31/05/2024.
//

import SwiftUI

struct WeatherButtom: View {
    
    var title:String
    var color:Color
    var backgroundColor:Color
    
    var body: some View {
            Text(title)
                .font(.system(size: 20,weight: .bold))
                .frame(width: 280,height: 50)
                .foregroundColor(color)
                .background(backgroundColor)
                .cornerRadius(10)
        
    }
}

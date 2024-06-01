//
//  FrameworkTitleView.swift
//  grid
//
//  Created by Defined Me on 01/06/2024.
//

import SwiftUI

struct FrameworkTitleView : View {
    var framework:Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80,height: 80)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}

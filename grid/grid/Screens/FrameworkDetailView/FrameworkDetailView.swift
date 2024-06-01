//
//  FrameworkDetailView.swift
//  grid
//
//  Created by Defined Me on 01/06/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework:Framework
    @Binding var isShowing:Bool
    @State var isShowingSafariView = false
    var body: some View {
        VStack{
            XDimissButtom(isShowing: $isShowing)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn more")
            }
        }
        .sheet(isPresented:$isShowingSafariView,content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://nainglinnphyo.vercel.app")!)
        })
       
    }
}

#Preview {
    FrameworkDetailView(framework:MockData.sampleFramework,isShowing:.constant(false))
}

//
//  ContentView.swift
//  grid
//
//  Created by Defined Me on 31/05/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridModelView()
   
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramewrok = framework
                            }
                    }
                   
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowing){
                FrameworkDetailView(framework: viewModel.selectedFramewrok!,isShowing: $viewModel.isShowing)
            }
        }
    }
}

#Preview {
    ContentView()
}


//
//  ContentView.swift
//  onbroadingscreen
//
//  Created by Defined Me on 25/05/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        if currentPage > totalPage {
            Home()
        }else{
            OnboardingScreen()
        }
        
    }
}

#Preview {
    ContentView()
}

struct Home : View {
    var body: some View {
        @AppStorage("currentPage") var currentPage = 1
        VStack {
            Text("Welcome to Onboarding!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
            Text("let's learn ios development!")
                .font(.body)
                .fontWeight(.medium)
            Button(action: {
                currentPage = 1
            }, label: {
                Text("Start")
                    .fontWeight(.bold)
                    
            })
            .padding(.horizontal,20)
            .padding(.vertical,8)
            .background(Color("mainColor"))
            .foregroundColor(.white)
            .cornerRadius(40)
        }
 
    }
}

var totalPage = 3

struct OnboardingScreen : View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack{
            if currentPage == 1 {
                ScreenView(title: "Title One", image: "social-1", details: "",currentPage: $currentPage)
            }
            if currentPage == 2{
                ScreenView(title: "Title Two", image: "social-2", details: "",currentPage: $currentPage);
            }
            if currentPage == 3 {
                ScreenView(title: "Title Three", image: "social-3", details: "",currentPage: $currentPage);
            }
        }
 
    }
}

struct ScreenView:View {
   
    var title:String
    var image:String
    var details:String
    @Binding var currentPage: Int
    
    var body: some View {
        VStack{
            HStack{
                if currentPage == 1 {
                    Text("Hello socializer!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                }else {
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.vertical,10)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
                Spacer()
                Button(action:{
                    currentPage = 4
                }, label:{
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }.padding()
                .foregroundColor(.black)
            Spacer(minLength: 0)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal,16)
                .frame(height: 300)
            Spacer(minLength: 80)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.top)
                .padding(.bottom,5)
                .foregroundColor(Color("mainColor"))
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.")
                .font(.body)
                .fontWeight(.regular)
                .kerning(1.2)
                .padding([.leading,.trailing])
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            HStack{
                if currentPage == 1 {
                    Color("mainColor").frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                }else if currentPage == 2 {
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color("mainColor").frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                }else if currentPage == 3 {
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color.gray.frame(height: 8/UIScreen.main.scale)
                    Color("mainColor").frame(height: 8/UIScreen.main.scale)
                }
            }.padding(.horizontal,35)
            
            
            
            Button(action: {
                if currentPage <= totalPage {
                    currentPage += 1
                }else {
                    currentPage = 1
                }
            }, label: {
                if currentPage == 1 {
                    Text("Get started!")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0,maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("mainColor"))
                        .cornerRadius(40)
                        .padding(.horizontal,16)
                }else {
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0,maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("mainColor"))
                        .cornerRadius(40)
                        .padding(.horizontal,16)
                }
                    
            })
            
        }
    }
}


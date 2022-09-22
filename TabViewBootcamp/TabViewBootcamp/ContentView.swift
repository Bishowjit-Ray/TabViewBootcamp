//
//  ContentView.swift
//  TabViewBootcamp
//
//  Created by Bishowjit Ray on 20/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    let icons: [String] = ["heart.fill","globe","house.fill","person.fill"]
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            };
               
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.red)
            RoundedRectangle(cornerRadius: 25.0)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.green)
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab){
//            HomeView(selectedTab: $selectedTab)
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browsw Tab")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    @Binding var  selectedTab: Int
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.all)
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile ")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        
        }
       
    }
}

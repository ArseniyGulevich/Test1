//
//  ContentView.swift
//  defewg
//
//  Created by Арсений Гулевич  on 23.09.2022.
//

import SwiftUI


// MARK: TABVIEW
struct Main: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem { Image(systemName: "house") }

            ChallengePage()
                .tabItem { Image(systemName: "star") }

            GamesPage()
                .tabItem { Image(systemName: "gamecontroller") }

            RewardsPage()
                .tabItem {
//                    Image("сup")
//                        .renderingMode(.template)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.gray)
                    Image(systemName: "circle")
                }
        }
    }
}

struct HomePage: View {
    var body: some View {
        
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 1.3)
                    .offset(y: 22)
                HStack {
                    HStack {
                        Image("LogoForNavigationBar")
                            .resizable()
                            .scaledToFit()
                        Text("Rewards".uppercased())
                            .font(.system(size: 16, weight: .semibold, design: .default))
                            .foregroundColor(Color("Green"))
                            .offset(x: -10, y: -3)
                    }
                    .frame(width: 270, height: 100)
                    Spacer()
                    Button(action: {
                        // some code
                    }) {
                        Image(systemName: "mail")
                            .font(.headline  )
                            .foregroundColor(Color("Gray"))
                    }
                }
                .padding()
            }
            Spacer()
        }
        
//        .background(Color.yellow)
    }
}

struct ChallengePage: View {
    var body: some View {
            Text("ChallengePage")
    }
}

struct GamesPage: View {
    var body: some View {
        
            Text("GamesPage")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        Main()
        HomePage()
    }
}

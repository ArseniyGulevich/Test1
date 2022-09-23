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
            Text("HomePage")
        
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
        Main()
    }
}

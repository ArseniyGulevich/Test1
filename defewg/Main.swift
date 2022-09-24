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
            LivePage()
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

struct TitleBar: View {
    @State var pageName: String
    
    var body: some View {
        HStack(spacing: 0) {
            Image("LogoForNavigationBar")
                .resizable()
                .scaledToFit()
                .frame(width: 182, height: 90, alignment: .trailing)
                
            Text(pageName.uppercased())
                .font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundColor(Color("Green"))
                .offset(y: -3)
            Spacer()
        }
        .background(
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(height: 1.3)
                .offset(y: 22)
        )
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
//        HomePage()
    }
}

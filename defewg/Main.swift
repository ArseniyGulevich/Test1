//
//  ContentView.swift
//  defewg
//
//  Created by Арсений Гулевич  on 23.09.2022.
//

import SwiftUI


// MARK: TABVIEW
struct Main: View {
    
    @State var whatPage = 1
    
    var body: some View {
        ZStack {
            // backgroud
            Color.white.ignoresSafeArea()
            
            // foreground
            VStack(spacing: 0) {
                if whatPage == 1 { LivePage() }
                if whatPage == 2 { ChallengePage() }
                if whatPage == 3 { GamesPage() }
                if whatPage == 4 { RewardsPage() }
            }
            
            VStack {
                Spacer()
                ZStack {
                    HStack {
                        Button(action: {
                            whatPage = 1
                        }) {
                            Image(whatPage == 1 ? "home-on" : "home-off")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        Spacer()
                        Button(action: {
                            whatPage = 2
                        }) {
                            Image(whatPage == 2 ? "star-on" : "star-off")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        Button(action: {
                            whatPage = 3
                        }) {
                            Image(whatPage == 3 ? "gamepad-on" : "gamepad-off")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        Spacer()
                        Button(action: {
                            whatPage = 4
                        }) {
                            Image(whatPage == 4 ? "achievement-on" : "achievement-off")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                    }
                    .frame(height: 50)
    //                    .background(.red)
                    
                    Button(action: {
                        // some code
                    }) {
                        Circle()
                            .fill(LinearGradient(colors: [Color("LightGreen"), Color("Green")], startPoint: .top, endPoint: .bottom))
                            .frame(width: 73, height: 73)
                            .overlay(
                                Image("plus-icon")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                            )
                    }
                    .offset(y: -24)
                }
                .frame(height: 50)
                .padding(.horizontal, 35)
                .background(
                    Image("bar-background")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white.opacity(0.95))
                        .frame(width: UIScreen.main.bounds.width, height: 100)
                        .offset(y: 20)
                        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: -4)
                )
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
            
            Button(action: {
                
            }) {
                Image("mail-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(22)
                    .overlay(
                        Text("1")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.white)
                            .padding(6)
                            .background(Circle().fill(Color("Green")))
                            .offset(x: 10, y: -10)
                    )
            }
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

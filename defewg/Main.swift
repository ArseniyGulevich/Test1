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
    @State var popupOpen = false
    
    var body: some View {
        ZStack {
            // backgroud
            Color.white.ignoresSafeArea()
            
            // foreground
            VStack(spacing: 0) {
                if whatPage == 1 { LivePage() }
                if whatPage == 2 { ChallengePage() }
                if whatPage == 3 { GamesPage() }
                if whatPage == 4 { RewardsPage1() }
            }
            
            if popupOpen { Color.black.opacity(0.53).ignoresSafeArea() }
            
            VStack {
                Spacer()
                
                ZStack {
                    if !popupOpen {
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
                    }
                
                    Circle()
                        .fill(LinearGradient(colors: [Color("LightGreen"), Color("Green")], startPoint: .top, endPoint: .bottom))
                        .frame(width: 73, height: 73)
                        .overlay(
                            Image(popupOpen ? "x-icon" : "plus-icon")
                                .resizable()
                                .frame(width: 26, height: 26)
                        )
                        .offset(y: popupOpen ? -410 : -24)
                        .onTapGesture {
                            popupOpen.toggle()
                        }
                        .animation(.spring())
                }
                .frame(height: 50)
                .padding(.horizontal, 35)
                .background(
                    ZStack {
                        Image("bar-background-big")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFill()
                            .offset(y: popupOpen ? -190 : 195)
                            .animation(.spring())
                            .foregroundColor(Color.white.opacity(popupOpen ? 1 : 0.95))
                            .frame(width: UIScreen.main.bounds.width, height: 100)
                            .offset(y: 20)
                            .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: -4)
                        
                        VStack {
                            if popupOpen { Cards() }
                        }
                        .offset(y: popupOpen ? -175 : 175)
                        .animation(.spring())
                        .frame(height: 700)
                    }
                )
                
            }
            
        }
    }
}

struct Cards: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Button(action: {
                //
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(LinearGradient(colors: [Color("Green"), Color("LightGreen"), Color("Green"),], startPoint: .leading, endPoint: .trailing))
                        .frame(height: 100)
                     HStack {
                        Image("AddUnderbergExperience-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 36, height: 36)
                            .padding(32)
                            .padding(.horizontal, 10)
                         Text("Add Underberg\nExperience")
                             .font(.system(size: 20, weight: .bold))
                             .lineLimit(2)
                             .foregroundColor(.white)
                         Spacer()
                    }
                }
                .padding(.horizontal, 23)
                .padding(.vertical, 10)
            }
            
            Button(action: {
                //
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("LightGray"))
                        .frame(height: 100)
                     HStack {
                        Image("FillupYourUnderbergTank-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 73, height: 73)
                            .padding(13)
                            .padding(.horizontal, 10)
                         Text("Fill up Your\nUnderberg Tank")
                             .font(.system(size: 20, weight: .bold))
                             .lineLimit(2)
                             .foregroundColor(.black)
                         Spacer()
                    }
                }
                .padding(.horizontal, 23)
                .padding(.vertical, 10)
            }
            
            Button(action: {
                //
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("LightGray"))
                        .frame(height: 100)
                     HStack {
                        Image("CreateYourGiftPack-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 73, height: 73)
                            .padding(13)
                            .padding(.horizontal, 10)
                         Text("Create Your Gift\nPack")
                             .font(.system(size: 20, weight: .bold))
                             .lineLimit(2)
                             .foregroundColor(.black)
                         Spacer()
                    }
                }
                .padding(.horizontal, 23)
                .padding(.vertical, 10)
            }
        }
        .background(.white)
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
//        Cards()
    }
}

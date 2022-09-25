//
//  Rewards2.swift
//  defewg
//
//  Created by Арсений Гулевич  on 25.09.2022.
//

import SwiftUI

struct RewardsPage1: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20, alignment: .topTrailing),
        GridItem(.flexible(), spacing: 20, alignment: .topLeading)
    ]
    
    @State var whatPage = 1
    
    var body: some View {
        
        if whatPage == 1 {
            VStack {
                TitleBar(pageName: "rewards")
                ScrollView {
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(LinearGradient(colors: [Color("Green"), Color("LightGreen"), Color("Green")], startPoint: .leading, endPoint: .trailing))
                            .frame(height: 216)
                        VStack(alignment: .leading) {
                            Text("Capsules Balance")
                                .font(.system(size: 18, weight: .regular))
                                .foregroundColor(.white)
                            Text("1,784")
                                .font(.system(size: 60, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                            Text("Collect rewards")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                                .padding(6)
                                .padding(.horizontal, 7)
                                .overlay(
                                    Capsule()
                                        .fill(.white.opacity(0.4))
                                )
                        }
                        .padding(28)
                    }
                    .shadow(color: Color("Green").opacity(0.45), radius: 7, x: 0, y: 8)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .onTapGesture {
                        whatPage = 2
                    }
                    
                    ZStack(alignment: .leading) {
                        Image("photo-for-feed-3")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 134)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 15)
                            )
                        
                        Color.black.opacity(0.5)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 15)
                            )
                        VStack(alignment: .leading) {
                            Spacer()
                            Text("Underberg Free Pack")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                            Text("1,999 kps")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                                .padding(6)
                                .padding(.horizontal, 7)
                                .overlay(
                                    Capsule()
                                        .fill(.white.opacity(0.4))
                                )
                            
                        }
                        .padding(28)
                    }
                    .shadow(color: .black.opacity(0.18), radius: 7, x: 0, y: 8)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .overlay(
                                    Image("photo-chat")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 134)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                )
                                .frame(height: 134)
                            VStack {
                                Image("chat-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36, height: 36)
                                Text("Club")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.white)
                            }
                            
                        }
                        .shadow(color: .black.opacity(0.15), radius: 9, x: 8, y: 8)
                        .padding(.leading, 20)
                        .padding(.trailing, 5)
                        .padding(.vertical, 5)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors: [Color("LightGreen"), Color("Green")], startPoint: .top, endPoint: .bottom))
                                .frame(height: 134)
                            VStack {
                                Image("cup-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36, height: 36)
                                Text("Challenge")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }
                        .shadow(color: Color("Green").opacity(0.45), radius: 7, x: 0, y: 8)
                        .padding(.trailing, 20)
                        .padding(.leading, 5)
                        .padding(.vertical, 5)
                    }
                    
                    ZStack(alignment: .leading) {
                        Image("rewards-photo")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 134)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 15)
                            )
                        
                        Color.black.opacity(0.5)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 15)
                            )
                        VStack(alignment: .leading) {
                            Spacer()
                            Text("Free Bottles")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                            Text("3,999 kps")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.white)
                                .padding(6)
                                .padding(.horizontal, 7)
                                .overlay(
                                    Capsule()
                                        .fill(.white.opacity(0.4))
                                )
                            
                        }
                        .padding(28)
                    }
                    .shadow(color: .black.opacity(0.18), radius: 7, x: 0, y: 8)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    
                    HStack {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(colors: [Color("LightGreen"), Color("Green")], startPoint: .top, endPoint: .bottom))
                                .frame(height: 134)
                            VStack {
                                Image("cup-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36, height: 36)
                                Text("Challenge")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }
                        .shadow(color: Color("Green").opacity(0.45), radius: 7, x: 0, y: 8)
                        .padding(.leading, 20)
                        .padding(.trailing, 5)
                        .padding(.vertical, 5)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .overlay(
                                    Image("photo-chat")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 134)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                )
                                .frame(height: 134)
                            VStack {
                                Image("chat-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 36, height: 36)
                                Text("Club")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.white)
                            }
                            
                        }
                        .shadow(color: .black.opacity(0.15), radius: 9, x: 8, y: 8)
                        .padding(.trailing, 20)
                        .padding(.leading, 5)
                        .padding(.vertical, 5)
                    }
                }
                .frame(width: UIScreen.main.bounds.width)
                
            }
            
        }
        
        if whatPage == 2 {
            RewardsPage2()
        }
        
        
        
        
    }
}

struct RewardsPage1_Previews: PreviewProvider {
    static var previews: some View {
        RewardsPage1()
    }
}

//
//  ChallengePage.swift
//  defewg
//
//  Created by Арсений Гулевич  on 24.09.2022.
//

import SwiftUI

struct ChallengePostModel: View {
    
    @State var name: String
    @State var photo: String
    @State var likeCounter: String
    @State var text: String
    @State var text2: String
    
    @State var like = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 13) {
                Text(name)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black.opacity(0.85))
                HStack {
                    Button(action: {
                        like.toggle()
                    }) {
                        Image(systemName: like ? "heart.fill" : "heart")
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    .foregroundColor(.black)
                    Text(likeCounter)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.black.opacity(0.85))
                }
                Text(text)
                    .font(.system(size: 14, weight: .regular))
                    .lineLimit(3)
                    .foregroundColor(.black.opacity(0.85))
            }
            .padding(.horizontal, 20)

            Image(photo)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(colors: [Color("Green"), Color("LightGreen")], startPoint: .leading, endPoint: .trailing))
                .frame(height: 47)
                .overlay(
                    Text("Join Challenge")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                )
                .padding(.horizontal, 20)
            
            Text(text2)
                .font(.system(size: 14, weight: .regular))
                .lineLimit(10)
                .foregroundColor(.black.opacity(0.85))
                .padding(.horizontal, 20)
            
        }
        .padding(.vertical, 15)
    }
}

struct ChallengePage: View {
    var body: some View {
        VStack {
            TitleBar(pageName: "challenge")
            Spacer()
            ScrollView {
                ChallengePostModel(
                    name: "7 Day Underberg Challenge",
                    photo: "photo-for-feed-3",
                    likeCounter: "15,665",
                    text: "Sed magna ultrices metus ultricies ut integer bibendum. Commodo sem congue egestas vel imperdiet aliquam sit platea congue...",
                    text2: "Ornare arcu, arcu, sodales feugiat. Nibh amet, vivamus tincidunt lorem penatibus. Mattis felis, sit quisque ut purus sodales. Condimentum quis venenatis consectetur nisl a vestibulum a, scelerisque. Quisque odio euismod pharetra urna, massa. Vulputate eget potenti eu praesent ultrices lectus scelerisque purus aenean."
                )
                ChallengePostModel(
                    name: "Ornare Challenge",
                    photo: "photo-for-feed-2",
                    likeCounter: "18,541",
                    text: "Ornare arcu, arcu, sodales feugiat. Nibh amet, vivamus tincidunt lorem penatibus.",
                    text2: "Condimentum quis venenatis consectetur nisl a vestibulum a, scelerisque. Quisque odio euismod pharetra urna, massa. Vulputate eget potenti eu praesent ultrices lectus scelerisque purus aenean."
                )
                ChallengePostModel(
                    name: "Ornare Challenge",
                    photo: "photo-for-feed-3",
                    likeCounter: "20,002",
                    text: "Nibh amet, vivamus tincidunt lorem penatibus tincidunt.",
                    text2: "Quis venenatis consectetur nisl a vestibulum a, scelerisque. Quisque odio euismod pharetra urna, massa. Vulputate eget potenti eu praesent ultrices lectus scelerisque purus."
                )
                Spacer().frame(height: 100)
            }
            
            
            
        }
    }
}


struct ChallengePage_Previews: PreviewProvider {
    static var previews: some View {
        ChallengePage()
    }
}

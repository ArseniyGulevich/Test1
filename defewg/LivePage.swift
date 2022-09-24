//
//  LivePage.swift
//  defewg
//
//  Created by Арсений Гулевич  on 24.09.2022.
//

import SwiftUI

struct PostModel: View {
    
    @State var time: String
    @State var photo: String
    @State var likeCounter: String
    @State var text: String
    
    @State var like = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image("logo-in-circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                VStack(alignment: .leading) {
                    Text("Underberg_official")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.black.opacity(0.85))
                    Text(time)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal, 20)
            Image(photo)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width)
            HStack{
                Button(action: {
                    like.toggle()
                }) {
                    Image(systemName: like ? "heart.fill" : "heart")
                }
                .foregroundColor(.black)
                Text(likeCounter)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.black.opacity(0.85))
            }
            .padding(.horizontal, 20)
            Text(text)
                .font(.system(size: 14, weight: .regular))
                .lineLimit(3)
                .foregroundColor(.black.opacity(0.85))
                .padding(.horizontal, 20)
        }
        .padding(.vertical, 15)
    }
}

struct LivePage: View {
    var body: some View {
        VStack {
            TitleBar(pageName: "live")
            Spacer()
            ScrollView {
                PostModel(
                    time: "15 min ago",
                    photo: "photo-for-feed-1",
                    likeCounter: "9,665",
                    text: "Sed magna ultrices metus ultricies ut integer bibendum. Commodo sem congue egestas vel imperdiet aliquam sit platea congue..."
                )
                PostModel(
                    time: "7 hours ago",
                    photo: "photo-for-feed-2",
                    likeCounter: "10,601",
                    text: "Magna ultrices metus ultricies ut integer bibendum. Commodo sem congue egestas vel."
                )
                PostModel(
                    time: "2 days ago",
                    photo: "photo-for-feed-3",
                    likeCounter: "20,753",
                    text: "Ultrices magna ultrices metus ultricies ut integer bibendum. Commodo sem congue egestas vel imperdiet aliquam sit..."
                )
                Spacer().frame(height: 100)
            }
            
            
            
        }
    }
}

struct LivePage_Previews: PreviewProvider {
    static var previews: some View {
        LivePage()
//        PostModel()
    }
}

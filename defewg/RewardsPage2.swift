//
//  RewardsPage.swift
//  defewg
//
//  Created by Арсений Гулевич  on 23.09.2022.
//

import SwiftUI

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var price: Int
    var photo: String
}

struct RewardsPage2: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20, alignment: .topTrailing),
        GridItem(.flexible(), spacing: 20, alignment: .topLeading)
    ]
    
    @State var items: [ItemModel] = [
        ItemModel(name: "Keyfinder Keychain", price: 48, photo: "KeyfinderKeychain"),
        ItemModel(name: "Tarot / Sheep’s head Cards", price: 48, photo: "TarotSheepsheadCards"),
        ItemModel(name: "UnderbergFlag", price: 48, photo: "UnderbergFlag"),
        ItemModel(name: "Crystal Glass Stand", price: 124, photo: "CrystalGlassStand"),
        ItemModel(name: "Tarot / Sheep’s head Cards", price: 48, photo: "TarotSheepsheadCards"),
        ItemModel(name: "Keyfinder Keychain", price: 48, photo: "KeyfinderKeychain"),
        ItemModel(name: "Crystal Glass Stand", price: 124, photo: "CrystalGlassStand"),
        ItemModel(name: "UnderbergFlag", price: 48, photo: "UnderbergFlag")
    ]
    
    var body: some View {
        ScrollView {
            TitleBar(pageName: "rewards")
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: 14) {
                        ZStack {
                            Image(item.photo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 235)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0))
                                .frame(width: 160, height: 235)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray.opacity(0.2), lineWidth: 1.3)
                                )
                        }
                        Text(item.name)
                        Text("\(item.price) kps")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Green"))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 7)
                            .background(Capsule().fill(.black.opacity(0.05)))
                    }
                }
            }
            .padding()
        }
        
        
        
        
    }
}

struct RewardsPage2_Previews: PreviewProvider {
    static var previews: some View {
        RewardsPage2()
    }
}

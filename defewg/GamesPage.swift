//
//  GamesPage.swift
//  defewg
//
//  Created by Арсений Гулевич  on 24.09.2022.
//

import SwiftUI

struct GamesPage: View {
    var body: some View {
        VStack {
            TitleBar(pageName: "Games")
            Spacer()
        }
    }
}

struct GamesPage_Previews: PreviewProvider {
    static var previews: some View {
        GamesPage()
    }
}

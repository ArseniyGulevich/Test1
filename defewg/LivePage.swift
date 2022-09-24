//
//  LivePage.swift
//  defewg
//
//  Created by Арсений Гулевич  on 24.09.2022.
//

import SwiftUI

struct LivePage: View {
    var body: some View {
        VStack {
            TitleBar(pageName: "live")
            Spacer()
        }
    }
}

struct LivePage_Previews: PreviewProvider {
    static var previews: some View {
        LivePage()
    }
}

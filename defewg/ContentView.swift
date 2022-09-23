//
//  ContentView.swift
//  defewg
//
//  Created by Арсений Гулевич  on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("This is test project.")
            .font(.system(size: 20, weight: .heavy))
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

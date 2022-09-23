//
//  ContentView.swift
//  defewg
//
//  Created by Арсений Гулевич  on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is test project.")
                .font(.system(size: 20, weight: .heavy))
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            Text("The second text here.")
                .font(.system(size: 20, weight: .heavy))
                .padding()
                .background(Color.yellow)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

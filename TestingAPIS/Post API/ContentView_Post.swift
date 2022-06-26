//
//  ContentView_Post.swift
//  Testing APIs
//
//  Created by Noice_anas on 26/06/2022.
//

import SwiftUI

struct ContentView_Post: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("the call was ")
                    .font(.system(size: 30, weight: .black))
                Text("successful")
                    .font(.system(size: 30, weight: .black))
                    .foregroundColor(.red)
            }
            Button {
                Task {
                    // TODO: add the post here
                }
            } label: {
                Text("POST")
                    .font(.system(size: 40, weight: .black))
                    .frame(width: 160)
                    .background(Color.red.opacity(0.7))
                    .cornerRadius(14)
            }
        }
    }
}

struct ContentView_Post_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_Post()
    }
}

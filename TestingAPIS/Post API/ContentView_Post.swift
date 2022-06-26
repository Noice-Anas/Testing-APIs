//
//  ContentView_Post.swift
//  Testing APIs
//
//  Created by Noice_anas on 26/06/2022.
//

import SwiftUI

struct ContentView_Post: View {
    
    let itemToPost = AddCar.init(customerID: 1, makeID: 1, name: "Noice car", modelID: 1, addCarDescription: "This is the first car", year: 2000, registrationNo: "ABC-1004", imagePath: "", statusID: 1)
    
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
                    await postFUNCTION()
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
    
    func postFUNCTION() async {
        guard let encoded = try? JSONEncoder().encode(itemToPost) else {
            print("⚠️ Failed to encode Model")
            return
        }
        
        let url = URL(string: "https://reqres.in/api/testing")!
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        
        
        do {
            let (data, _) = try await URLSession.shared.upload(for: urlRequest, from: encoded)
            //handle the result
            let decoded = try JSONDecoder().decode(AddCar.self, from: data)
            print(decoded.addCarDescription ?? "something went wrong 🔺")
            
        } catch {
            print("⚠️ there has been a URLSession ERROR \(error.localizedDescription)")
        }
    }
}

struct ContentView_Post_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_Post()
    }
}

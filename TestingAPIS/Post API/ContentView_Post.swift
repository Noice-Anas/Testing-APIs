//
//  ContentView_Post.swift
//  Testing APIs
//
//  Created by Noice_anas on 26/06/2022.
//

import SwiftUI

struct ContentView_Post: View {
    
    let itemToPost = AddCar.init(customerID: 1, makeID: 1, name: "Noice car", modelID: 1, addCarDescription: "This is the first car", year: 2000, registrationNo: "ABC-1204", imagePath: "", statusID: 1)
    
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
                    await postTo(urlString: "http://apicustomer-uat.garage.sa/api/add/car", item: itemToPost, responseType: ResponseModel.self, completionHandler: { data in
                        print(data.responseModelDescription ?? "something went wrong ")
                    })
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
    
    func postTo<typeOfItem: Codable, typeOfResponse: Codable>(urlString: String, item: typeOfItem, responseType: typeOfResponse.Type, completionHandler: @escaping (typeOfResponse) -> ()) async {
        //First step: encode the item to be able to send it to the API
        guard let encoded = try? JSONEncoder().encode(item) else {
            print("⚠️ Failed to encode Model")
            return
        }
        //Second step: configure the POST url request
        guard let url = URL(string: urlString) else {
            print("⚠️ wrong URL to post")
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        //Third step: post the data to the API call and receive a response
        do {
            let (data, _) = try await URLSession.shared.upload(for: urlRequest, from: encoded)
            //handle the result
            let decoded = try JSONDecoder().decode(typeOfResponse.self, from: data)
            completionHandler(decoded)
            
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

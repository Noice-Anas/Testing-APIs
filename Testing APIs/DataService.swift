//
//  FirstDataService.swift
//  Garage Customer
//
//  Created by Noice_anas on 02/06/2022.
//

import Foundation
import Combine

class Settings_DataService {
    
    @Published var settingsData: Settings_Model? = nil
    private var dataSubscription: AnyCancellable?
    
    init() {
        getData()
    }

private func getData() {
        guard let url = URL(string: "http://apicustomer-uat.garage.sa/api/setting/all") else {
            print("⚠️ url not valid Error.")
            return
        }
        
        dataSubscription = NetworkingManger.download(url: url)
            .decode(type: Settings_Model.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManger.handleCompletion, receiveValue: { [weak self] returnedData in
                guard let self = self else { return }
                // here we do whatever we want with the returned result
                print("✅ Date Fetched")
                self.settingsData = returnedData
                self.dataSubscription?.cancel()
            })
    }
}

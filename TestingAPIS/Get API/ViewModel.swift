//
//  Onboarding_VeiwModel.swift
//  Garage Customer
//
//  Created by Noice_anas on 02/06/2022.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    
    //for the data coming form the api
    @Published var settings: Settings_Model? = nil
    private let dataFromAPI = Settings_DataService()
    private var cancellabels = Set<AnyCancellable>()
    // for delaying the splash screen
    var isDataBack: Bool { settings != nil ? true : false }
    
    
    init() {
        addSubscribers()
    }
    
    private func addSubscribers() {
        dataFromAPI.$settingsData
            .sink { [weak self] Response in
                self?.settings = Response
            }
            .store(in: &cancellabels)
    }
    
}

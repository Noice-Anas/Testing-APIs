//
//  ContentView.swift
//  Testing APIs
//
//  Created by Noice_anas on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        Text("\(vm.settings?.settingsDescription ?? "not working")")
            .font(.system(size: 40, weight: .bold))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

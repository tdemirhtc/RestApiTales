//
//  ContentView.swift
//  RestApiTales
//
//  Created by Hatice Taşdemir on 8.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var apiVM = ApiViewModel()
    var body: some View {
        
        NavigationView{
            //listin içinde hangi verileri gösteriyorsak onu veririz
            List(apiVM.jokes){ element in
                Text(element.joke)
            }
            .toolbar {
                Button(action: addTales) {
                    Text("Get New Tales")
                }
            }
            
            .navigationBarTitle(Text("Tales App"))
        }
        
    }
    
    func addTales() {
        apiVM.getTales(count: 1)
    }
}

#Preview {
    ContentView()
}

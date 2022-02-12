//
//  ContentView.swift
//  Africa
//
//  Created by Macbook Pro on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPS
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) {animal in
                    AnimalListItemView(animal: animal)
                }
            }//: LIST
            .navigationBarTitle("Africa", displayMode: .large)
        } //: NAV
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}

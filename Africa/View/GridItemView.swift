//
//  GridItemView.swift
//  Africa
//
//  Created by Macbook Pro on 2/24/22.
//

import SwiftUI

struct GridItemView: View {
    
    // MARK: - PROPS
    
    let animal: Animal
    
    // MARK: _ BODY
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        }
    }


struct GridItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        GridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

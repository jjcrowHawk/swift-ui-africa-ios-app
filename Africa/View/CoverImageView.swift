//
//  CoverImageView.swift
//  Africa
//
//  Created by Macbook Pro on 2/12/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: -PROPS
    
    let coverImages: [CoverImage] =
        Bundle.main.decode("covers.json")
    
    // MARK: -BODY
    
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

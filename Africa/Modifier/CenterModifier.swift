//
//  CenterModifier.swift
//  Africa
//
//  Created by Macbook Pro on 2/3/22.
//

import SwiftUI


struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}

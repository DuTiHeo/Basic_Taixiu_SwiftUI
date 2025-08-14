//
//  DIceView.swift
//  DiceView
//
//  Created by Macpro M2    on 2025/07/15.
//

import SwiftUI

struct DIceView: View {
    var IndexDice: Int
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(IndexDice).fill")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .color1.opacity(0.8))
        }
            
    }
}

#Preview {
    DIceView(IndexDice: 5)
   
}


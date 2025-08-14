//
//  ContentView.swift
//  DiceView
//
//  Created by Macpro M2    on 2025/07/15.
//
/*Tôi sẽ test cái cmd ở đây, up to github v1sss */
import SwiftUI

struct ContentView: View {
    @State var id1: Int = 3
    @State var id2: Int = 2
    @State var id3: Int = 1
    @State var kq: String = ""
    
    var body: some View {
        VStack {
            Text("Tài hay xỉu")
                .font(.system(size: 30, weight: .bold))
                .padding()
            
            HStack {
                DIceView(IndexDice: id1)
                DIceView(IndexDice: id2)
                DIceView(IndexDice: id3)
            }
            
                
            Button("Roll", systemImage: "dice") {
                id1 = Int.random(in: 1...6)
                id2 = Int.random(in: 1...6)
                id3 = Int.random(in: 1...6)

                if (id1 + id2 + id3) >= 11 {
                    kq = "Tài nha e"
                } else {
                    kq = "Xỉu nha cu"
                }
                }
                .font(.system(size: 30, weight: .bold))
                .padding(.horizontal, 40)
                .padding(.vertical, 15)
                .background(Color.color1.opacity(0.8))
                .foregroundColor(.brown)
                .cornerRadius(15)
                .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 4)
            
            Text(kq)
                .font(.system(size: 30, weight: .bold))
                .foregroundStyle(.black)
                .padding()
                .background(Color.yellow.opacity(0.2))
                .cornerRadius(15)
                .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 4)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.color)
    }
}

#Preview {
    ContentView(id1: 1, id2: 2, id3: 3)
}

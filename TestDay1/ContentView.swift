//
//  ContentView.swift
//  TestDay1
//
//  Created by Bader Alsabah on 5/1/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct ContentView: View {


    @State var thekr = "الله أكبر"
    var body: some View {
        ZStack {
            BGTemplate()
            Text(thekr)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .font(.largeTitle)
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}

struct BGTemplate: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.edgesIgnoringSafeArea(.all)
            
        }
    }
}

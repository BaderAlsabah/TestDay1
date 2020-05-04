//
//  ClassWork3.swift
//  TestDay1
//
//  Created by Bader Alsabah on 5/3/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct ClassWork3: View {
    @State var thekr = athkar.randomElement()
    @State var counter = 0
    var body: some View {
        ZStack{
            BGTemplate()
            VStack{
                Text(thekr!)
                    .modifier(ThekrModofier())

                Text("\(counter)")
                .modifier(CounterModofier())
            }
        }                    .onTapGesture {
                self.counter += 1
        }
        .onLongPressGesture {
            self.thekr  = athkar.randomElement()
            self.counter = 0
        }
    }
}

struct ClassWork3_Previews: PreviewProvider {
    static var previews: some View {
        ClassWork3()
    }
}


struct ThekrModofier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct CounterModofier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("Al Tarikh", size: 50))
            .padding(.horizontal, 70)
            .padding(.vertical,3)
            .background(Color.init(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.3043573944)))
            .clipShape(Capsule())
        
    }
    
}

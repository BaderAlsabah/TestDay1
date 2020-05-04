//
//  ClassWork2.swift
//  TestDay1
//
//  Created by Bader Alsabah on 5/3/20.
//  Copyright © 2020 Bader Alsabah. All rights reserved.
//

import SwiftUI

struct ClassWork2: View {
   @State var pageNumber = ""
    var body: some View {
        ZStack{
        BGTemplate()
            
            VStack {
                Text("Page: \(pageNumber)")
                .fontWeight(.bold)
                .foregroundColor(.white)
                    .font(.largeTitle)
                TextField("رقم الصفحة", text: $pageNumber)
                .padding()
                .multilineTextAlignment(.trailing)
                .keyboardType(.numberPad)
                .frame(height: 90)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
          
        }
        }
        
}

struct ClassWork2_Previews: PreviewProvider {
    static var previews: some View {
        ClassWork2()
    }
}

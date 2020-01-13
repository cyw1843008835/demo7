//
//  SwiftUIView2.swift
//  demo7
//
//  Created by yw c on 2020/01/13.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        ZStack{
            VStack{
        HStack{
            Text("ユーザ登録　　　　　")
            Button(action: {
                // self.$showLoginView = false
            }) {
                Text("メイン画面")
            }.padding()
                .background(Color.gray)
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .cornerRadius(10).font(.system(size: 50)).animation(.default)
            
        }.frame(width: 1100, height: 100, alignment: .topLeading)
        HStack{
            Image("picture")
            .frame(width: 500, height: 600, alignment: .center)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("確　　定")
            }
            .padding()
                       .background(Color.orange)
            .font(.system(size: 40))
                       .foregroundColor(Color.white)
                   .cornerRadius(90)
                Spacer().frame(width: 0, height: 60, alignment: .topLeading)
        }.frame(width: 1100, height: 600, alignment: .topLeading)
            }
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2().previewLayout(.fixed(width: 1194, height: 834))
    }
}

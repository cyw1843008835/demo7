//
//  SwiftUIView.swift
//  demo7
//
//  Created by yw c on 2020/01/11.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
   
     
           var body: some View {
           ZStack{
            VStack{
            HStack{
                Text("　ユーザ登録　　　")
                                                  .font(.system(size: 50)).animation(.default)
                                              Spacer()
                Button(action: {
                                                  //self.showLoginView = false
                                              }) {
                                                  Text("メイン画面")
                                              }.padding()
                                                  .background(Color.gray)
                                                  .font(.system(size: 30))
                                                  .foregroundColor(Color.white)
                                                  .cornerRadius(10)
                
            }.frame(width: 1194, height: 150,alignment: .leading)
            HStack{
                VStack{
                      Image("picture")
                }.frame(width: 400, height: 600)
                VStack{
                    HStack{
                        Text("氏名") .font(.title)
                                                         TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/) .font(.title)
                                                         
                    }
                    HStack{
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("所属：").font(.title)) {
                                                              /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                                                              /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                                                          }
                    }
                }.frame(width: 550, height: 600, alignment: .leading)
                VStack{
                    Spacer()
                                                  Button(action: {
                                                      
                                                  }) {
                                                      Text("確　　定")
                                                  }
                                                  .padding()
                                                  .background(Color.orange)
                                                  .font(.system(size: 40))
                                                  .foregroundColor(Color.white)
                                                  .cornerRadius(90)
                                                  Spacer().frame(width: 0, height: 60, alignment: .topLeading)
                                                  Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                                      Text("リセット")
                                                  }
                                                  .padding()
                                                  .background(Color.orange)
                                                  .font(.system(size: 40))
                                                  .foregroundColor(Color.white)
                                                  .cornerRadius(90)
                                                  Spacer().frame(width: 0, height: 60, alignment: .topLeading)
                                                  
                }.frame(width: 200, height: 600)
            }
            }
            .background(Color.yellow)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView().previewLayout(.fixed(width: 1194, height: 834))
    }
}

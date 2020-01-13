//
//  ContentView.swift
//  demo7
//
//  Created by yw c on 2020/01/11.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showLoginView: Bool = false
    @State var showEntryView: Bool = false
    @State var showExitCheckView: Bool = false
    @State var showingAlert = false
    func sysDate() ->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        return formatter.string(from: Date())
    }
    var body: some View {
        ZStack{
            VStack {
                Spacer().frame(width: 10, height: 60, alignment: .topLeading)
                HStack{
                    
                    Text("    入退室管理システム１.０")
                        .font(.system(size: 50)).animation(.default)
                    Spacer()
                    Button("ユーザ登録"){
                        self.showLoginView.toggle()
                    }.padding()
                        .background(Color.gray)
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    
                }
                HStack {
                    //Spacer().frame(width: 200, height: 100, alignment: .top)
                    
                    Text("　入退場一覧(\(sysDate()))").font(.title)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("前日")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("当日")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("翌日")
                    }
                }.frame(width: 1194, height: 100,alignment: .leading)
                HStack{
                    VStack{
                        ListView()
                    }.frame(width: 1000, height: 520, alignment: .topLeading)
                    VStack{
                        Spacer()
                        Button("入場"){
                            // self.showImagePicker = true
                            self.showEntryView.toggle()
                        }.padding()
                            .background(Color.green)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .cornerRadius(90)
                        Spacer().frame(width: 0, height: 20)
                        Button("退場"){
                            self.showExitCheckView.toggle()
                        }.padding()
                            .background(Color.orange)
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .cornerRadius(90)
                        Spacer().frame(width: 0, height: 60)
                        
                    }.frame(width: 150, height: 520)
                    
                }
                
                
            }
            .frame(width: 1194, height: 834, alignment: .top)
            .background(Color.yellow)
            if self.showLoginView{
                LoginView(showLoginView:self.$showLoginView)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .animation(.easeInOut)
                    .transition(.move(edge: .bottom))
            }
            if self.showEntryView{
                EntryView(showEntryView:self.$showEntryView)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .animation(.easeInOut)
                    .transition(.move(edge: .bottom))
            }
            if self.showExitCheckView{
                ExitCheckView(showExitCheckView:self.$showExitCheckView)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .animation(.easeInOut)
                    .transition(.move(edge: .bottom))
            }
            
            
        }
    }
}
struct ListView: View{
    var body:some View{
        List {
            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
        }
    }
}
struct ListView1: View {
    @State private var showImagePicker: Bool = false
    @State private var image:Image? = nil
    
    //@ObservedObject var store = UserList()
    
    var body: some View {
        
        HStack {
            ZStack {
                Text("入退室一覧").font(.system(size: 30))
                    .foregroundColor(Color.orange)
                    .frame(width: 800, height: 580, alignment: .top)
                    .background(Color.white)
                
                //            List (store.users,id: \.userId) { (user) in
                //                UserRow(user: user)
                List{
                    UserRow()
                }
                .frame(width: 800, height: 520, alignment: .topLeading)
                .colorScheme(.light)
            }
            Spacer().frame(width: 200, height: 20, alignment: .topLeading)
            VStack {
                Spacer()
                image?.resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Button("入場"){
                    self.showImagePicker = true
                }.padding()
                    .background(Color.green)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .cornerRadius(90)
                Spacer().frame(width: 0, height: 20, alignment: .topLeading)
                Button("退場"){
                    
                }.padding()
                    .background(Color.orange)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .cornerRadius(90)
                
                Spacer().frame(width: 0, height: 60, alignment: .topLeading)
            }
            
        }
        
        
        
    }
}
struct UserRow: View {
    //var user: User
    
    var body: some View {
        HStack {
            //            Text(String(user.userId))
            //            Text(user.userName)
            Text("userid")
            Text("username")
        }
    }
}
struct LoginView: View {
    @Binding var showLoginView: Bool
    var body: some View {
       ZStack{
           VStack{
           HStack{
               Text("　ユーザ登録　　　")
                                                 .font(.system(size: 50)).animation(.default)
                                             Spacer()
               Button(action: {
                                                 self.showLoginView = false
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
                                                 .background(Color.green)
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
struct EntryView: View {
    @Binding var showEntryView: Bool
    var body: some View {
        ZStack{
                   VStack{
                               HStack{
                                   Text("　入場　　　")
                                   .font(.system(size: 50)).animation(.default)
                                   Spacer()
                                   Button(action: {
                                       self.showEntryView = false
                                   }) {
                                       Text("メイン画面")
                                   }.padding()
                                       .background(Color.gray)
                                       .font(.system(size: 30))
                                       .foregroundColor(Color.white)
                                       .cornerRadius(10).font(.system(size: 50)).animation(.default)
                                   
                               }.frame(width: 1194, height: 150, alignment: .center)
                               HStack{
                                   VStack{
                                       Image("picture")
                                   }.frame(width: 550, height: 600)
                                   VStack{
                                       Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                                   }.frame(width: 400, height: 600, alignment: .leading)
                                   VStack{
                                       Button(action: {
                                           self.showEntryView = false
                                       }) {
                                           Text("入場")
                                       }
                                       .padding()
                                       .background(Color.green)
                                       .font(.system(size: 40))
                                       .foregroundColor(Color.white)
                                       .cornerRadius(90)
                                   }.frame(width: 150, height: 600 )
                               }
                               
                               
                           }
                   }
        
    }
}
struct ExitCheckView: View{
    @State var showExitView: Bool = false
    @Binding var showExitCheckView:Bool
   
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    Text("最終退場チェックリスト")
                        .font(.system(size: 50)).animation(.default)
                }
                HStack{
                    List(exitCheckListdata){ item in
                        CheckView(isChecked: item.isChecked, title: item.title)
                    }
                    .font(.title)
                    .frame(width: 1000, height: 520, alignment: .topLeading)
                    Button(action: {
                        self.showExitView.toggle()
                    }) {
                        Text("確認")
                    }
                    .padding()
                    .background(Color.green)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .cornerRadius(90)
                    
                }
                
            }
            if self.showExitView{
            ExitView(showExitView:self.$showExitView)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
                .animation(.easeInOut)
                .transition(.move(edge: .bottom))
        }
        
        }
    }
}
struct ExitView: View {
    @Binding var showExitView: Bool
    @State private var showingAlert = false
   
    let contentView = ContentView()
    var body: some View {
        VStack{
            HStack{
                Text(" 退場　　　")
                    .font(.system(size: 50)).animation(.default)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("メイン画面")
                }
                .padding()
                .background(Color.gray)
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .cornerRadius(10).font(.system(size: 50)).animation(.default)
                
            }
            .frame(width: 1194, height: 150, alignment: .center)
            HStack{
                VStack{
                    Image("picture")
                }
                .frame(width: 550, height: 600)
                VStack{
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                }.frame(width: 400, height: 600, alignment: .leading)
                VStack{
                    Button(action: {
                        
                        self.showingAlert = true
                    }) {
                        Text("退場")
                    }
                    .padding()
                    .background(Color.orange)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .cornerRadius(90)
                    .alert(isPresented:$showingAlert) {
                        Alert(title: Text(""), message: Text("退場でよろしでしようか？"), primaryButton: .destructive(Text("はい")) {
                            self.showExitView = false
                        }, secondaryButton: .cancel(Text("いいえ"))
                        )
                    }
                }.frame(width: 150, height: 600 )
            }
            
            
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 1194, height: 834))
    }
}

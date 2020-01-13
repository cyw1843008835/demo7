//
//  CheckView.swift
//  demo7
//
//  Created by yw c on 2020/01/13.
//  Copyright © 2020 yw c. All rights reserved.
//

//
//  CheckView.swift
//  Tips_08_04_ToDoList
//
//  Created by Steven Lipton on 8/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct CheckView: View {
    @State var isChecked:Bool = false
    var title:String
    func toggle(){isChecked = !isChecked}
    var body: some View {
        HStack{
            Button(action: toggle) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
            }
            Text(title)
        }
    }
}

#if DEBUG
struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView(title:"Title")
    }
}
#endif

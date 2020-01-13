//
//  CheckListView.swift
//  demo7
//
//  Created by yw c on 2020/01/13.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct CheckListView: View {
    var body: some View {
        List(exitCheckListdata){ item in
            CheckView(isChecked: item.isChecked, title: item.title)
        }
        .font(.title)
    }
}

#if DEBUG
struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListView()
    }
}
#endif


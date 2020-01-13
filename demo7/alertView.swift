//
//  alertView.swift
//  demo7
//
//  Created by yw c on 2020/01/13.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct alertView: View {
    @State private var showingAlert = false

    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .alert(isPresented:$showingAlert) {
            Alert(title: Text("Are you sure you want to delete this?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
            }, secondaryButton: .cancel())
        }
    }
}

struct alertView_Previews: PreviewProvider {
    static var previews: some View {
        alertView()
    }
}

//
//  BottomMenuView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 23/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct BottomMenuView: View {
    let items = ["Blue", "Default", "Green", "Yellow", "Red", "Magenta"]
    @State var selectedItem = 1
    var handleSelection: () -> Void
    
    var body: some View {
        VStack {
            CheckMenuGroupView(title: "Select a color", items: self.items, selectedItem: self.$selectedItem, handleSelection: self.handleSelection)
                .padding(.vertical)
        }
        .background(Color.white)
    }
}

struct BottomMenuView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuView(handleSelection: {
            
        })
            .background(Color.gray)
    }
}

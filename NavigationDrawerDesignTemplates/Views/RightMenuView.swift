//
//  RightMenuView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 23/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct RightMenuView: View {
    let colorItems = ["Blue", "Default", "Green", "Yellow", "Red", "Magenta"]
    let propsItems = ["Blue", "Default", "Green", "Yellow", "Red"]
    
    @State var selectedPropsItem = 1
    @State var selectedColorsItem = 1
    
    var handleSelection: () -> Void
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                CheckMenuGroupView(title: "Select props", items: self.propsItems, selectedItem: self.$selectedPropsItem, handleSelection: self.handleSelection)
                    .padding(.vertical)
                
                CheckMenuGroupView(title: "Select a color", items: self.colorItems, selectedItem: self.$selectedColorsItem, handleSelection: self.handleSelection)
                    .padding(.vertical)
                
                Spacer()
            }
            .background(Color.white)
        }
    }
}

struct RightMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RightMenuView(handleSelection: {
            
        })
            .background(Color.gray)
    }
}

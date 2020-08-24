//
//  LeftMenuView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 21/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct LeftMenuView: View {
    var handleSelection: () -> Void
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                MenuGroupView(title: "CORE NAVIGATION", items: ["Accessibility", "Classes", "Colors", "Typography", "Variables"], handleSelection: self.handleSelection)
                    .padding(.top)
                
                MenuGroupView(title: "COMPONENTS", items: ["Breadcrumbs", "Button", "Button Group", "Callout", "Card", "Collapse", "Collapsible List", "Divider"], handleSelection: self.handleSelection)
                
                Spacer()
            }
            .background(Color.white)
        }
        .background(Color.white)
    }
}

struct MenuGroupView: View {
    var title: String
    @State var selectedItem = 0
    var items: [String]
    var handleSelection: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding(.top)
            
            ForEach(0 ..< items.count) { i in
                MenuItemView(title: self.items[i], selectedIem: self.$selectedItem, index: i, handleSelection: self.handleSelection)
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct MenuItemView: View {
    var title: String
    @Binding var selectedIem: Int
    var index: Int
    var handleSelection: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                self.selectedIem = self.index
                self.handleSelection()
            }) {
                HStack {
                    Text(title)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    if self.selectedIem == self.index {
                        Image(systemName: "hand.thumbsdown.fill")
                    }
                }
                .foregroundColor(self.selectedIem == index ? Color(#colorLiteral(red: 0.7620207667, green: 0.2105730474, blue: 0.3956400454, alpha: 1)) : Color(#colorLiteral(red: 0.2982103229, green: 0.301173538, blue: 0.3490692377, alpha: 1)))
                .padding(.vertical)
                .padding(.horizontal, 20)
                .background(self.selectedIem == index ? Color(#colorLiteral(red: 0.9900297523, green: 0.9310668707, blue: 0.9495285153, alpha: 1)) : Color.white)
                .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView(handleSelection: {
            
        }).background(Color.gray)
    }
}

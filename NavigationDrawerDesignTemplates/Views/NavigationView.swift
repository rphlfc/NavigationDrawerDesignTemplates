//
//  NavigationView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 21/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "arrow.left")
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.7894736528, green: 0.6376578212, blue: 0.8239302635, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.3435535133, green: 0.4142350852, blue: 0.3911313415, alpha: 1)))
                    .clipShape(Circle())
            }
            
            Text("Back")
                .font(.system(size: 24))
                .foregroundColor(Color(#colorLiteral(red: 0.7894736528, green: 0.6376578212, blue: 0.8239302635, alpha: 1)))
            
            Spacer()
        }
        .padding()
        .background(Color(#colorLiteral(red: 0.3157628179, green: 0.3498623371, blue: 0.3623707592, alpha: 1)))
        .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}

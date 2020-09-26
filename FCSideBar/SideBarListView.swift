//
//  SideBarListView.swift
//  FCSideBar
//
//  Created by Kavinkumar Veerakumar on 26/09/20.
//  Copyright © 2020 Kavinkumar Veerakumar. All rights reserved.
//

import SwiftUI

struct SideBarListView: View {
    
    @Binding var isOpen: Bool
    
    var body: some View {
        VStack {
            Spacer()
            ForEach(FCSideBarMenuItems.allCases, id: \.self) { menu in
                HStack(alignment: .center, spacing: 10) {
                    menu.icon
                        .frame(width: 40.0, height: 40.0)
                    Text(menu.title)
                    Spacer()
                }
                .foregroundColor(.white)
            }
            Spacer()
        }
    }
}

struct SideBarListView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarListView(isOpen: .constant(true))
    }
}

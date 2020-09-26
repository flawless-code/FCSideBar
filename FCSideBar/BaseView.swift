//
//  BaseView.swift
//  FCSideBar
//
//  Created by Kavinkumar Veerakumar on 26/09/20.
//  Copyright © 2020 Kavinkumar Veerakumar. All rights reserved.
//

import SwiftUI

struct BaseView: View {
    
    @Binding var isOpen: Bool
    
    var body: some View {
        NavigationView {
            Text("BaseView")
                .font(.system(.largeTitle))
                .bold()
                .navigationBarItems(leading: Button(action: {
                    self.isOpen = true
                }, label: {
                    Image(systemName: "text.justify")
                }))
                .navigationBarTitle(Text("Home"))
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView(isOpen: .constant(true))
    }
}

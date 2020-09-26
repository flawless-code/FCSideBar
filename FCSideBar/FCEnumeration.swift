//
//  FCEnumeration.swift
//  FCSideBar
//
//  Created by Kavinkumar Veerakumar on 26/09/20.
//  Copyright © 2020 Kavinkumar Veerakumar. All rights reserved.
//

import SwiftUI

enum FCSideBarMenuItems: CaseIterable {
    
    case dashboard
    case clients
    case deals
    case calendar
    case reports
    case profile
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .clients:
            return "Clients"
        case .deals:
            return "Deals"
        case .calendar:
            return "Calendar"
        case .reports:
            return "Reports"
        case.profile:
            return "Profile"
        }
    }
    
    var icon: some View {
        switch self {
        case .dashboard:
            return Image(systemName: "timer")
        case .clients:
            return Image(systemName: "person.badge.plus.fill")
        case .deals:
            return Image(systemName: "car.fill")
        case .calendar:
            return Image(systemName: "calendar")
        case .reports:
            return Image(systemName: "chart.bar.fill")
        case .profile:
            return Image(systemName: "person.fill")
        }
    }
    
}

//
//  OrderStatusUtl.swift
//  SatkomTest
//
//  Created by Henry David Lie on 20/03/25.
//

import SwiftUI

func getOrderStatusText(_ status: OrderStatus) -> String {
    switch status {
    case .paid:
        return "Terbayar"
    case .unpaid:
        return "Belum Terbayar"
    case .draft:
        return "Draft"
    case .cancel:
        return "Dibatalkan"
    }
}


func orderStatusColor(_ status: OrderStatus) -> Color {
    switch status {
    case .paid: return Color.green.opacity(0.2)
    case .unpaid: return Color.yellow.opacity(0.2)
    case .draft: return Color.orange.opacity(0.2)
    case .cancel: return Color.red.opacity(0.2)
    }
}

func orderStatusTextColor(_ status: OrderStatus) -> Color {
    switch status {
    case .paid: return Color.green
    case .unpaid: return Color.yellow
    case .draft: return Color.orange
    case .cancel: return Color.red
    }
}

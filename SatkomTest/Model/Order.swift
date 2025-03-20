//
//  Order.swift
//  SatkomTest
//
//  Created by Henry David Lie on 20/03/25.
//

import Foundation

enum OrderStatus : String {
    case draft, unpaid, paid, cancel
}

struct Order : Identifiable {
    let id = UUID()
    let orderId: String
    let orderStatus: OrderStatus
    let customerName: String
    let orderItems: Int
    let orderDate: String
    let orderTime: String
    let orderTotalAmount: String
}

let dummyOrder = [
    Order(orderId: "20240900021", orderStatus: .draft, customerName: "Jamal Fuadi", orderItems: 5, orderDate: "25 Agu 2024", orderTime: "19:00", orderTotalAmount: "Rp167.000"),
    Order(orderId: "20240900022", orderStatus: .unpaid, customerName: "Jamal Fuadi", orderItems: 5, orderDate: "25 Agu 2024", orderTime: "19:00", orderTotalAmount: "Rp167.000"),
    Order(orderId: "20240900023", orderStatus: .paid, customerName: "Jamal Fuadi", orderItems: 5, orderDate: "25 Agu 2024", orderTime: "19:00", orderTotalAmount: "Rp167.000"),
    Order(orderId: "20240900024", orderStatus: .cancel, customerName: "Jamal Fuadi", orderItems: 5, orderDate: "25 Agu 2024", orderTime: "19:00", orderTotalAmount: "Rp167.000")
]

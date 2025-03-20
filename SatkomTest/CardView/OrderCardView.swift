//
//  OrderCardView.swift
//  SatkomTest
//
//  Created by Henry David Lie on 20/03/25.
//

import SwiftUI

struct OrderCardView: View {
    
    let order: Order
    
    var body: some View {
        VStack {
            HStack {
                Text("Order ID : \(order.orderId)")
                Spacer()
                Text(getOrderStatusText(order.orderStatus))
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(orderStatusColor(order.orderStatus))
                    .foregroundColor(orderStatusTextColor(order.orderStatus))
                    .clipShape(Capsule())
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text(order.customerName)
                        .font(.headline)
                    
                    Text("\(order.orderItems) Pesanan")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("\(order.orderDate) | \(order.orderTime)")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("Rp\(order.orderTotalAmount)")
                        .font(.headline)
                }
            }
            .padding(.vertical, 8)
            
            HStack {
                if order.orderStatus == .paid {
                    Button {
                        // Action for "Cetak Struk"
                    } label: {
                        Text("Cetak Struk")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                
                Button {
                    // Action for "Lihat Detail"
                } label: {
                    Text("Lihat Detail")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(10)
                        .foregroundColor(Color.blue)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 2)
                )
            }
            .padding(.vertical, 8)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    OrderCardView(
        order: dummyOrder[0]
    )
}

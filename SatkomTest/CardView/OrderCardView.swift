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
                Text(order.orderStatus.rawValue.capitalized)
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
                        
                    } label: {
                        Text("Cetak Struk")
                        fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                }
                
                Button {
                    
                } label: {
                    Text("Lihat Detail")
                }
                .fontWeight(.semibold)
                .frame(maxWidth: order.orderStatus != .paid ? .infinity : nil)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 2)
                )
                .foregroundColor(Color.blue)
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

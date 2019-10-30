//
//  ProductDetail.swift
//  IndocomfestDemo
//
//  Created by ibrahim on 30/10/19.
//  Copyright © 2019 ibrahim. All rights reserved.
//

import SwiftUI

struct ProductDetail: View {
    
    var product: Product
    
    var body: some View {
        VStack(alignment: .center) {
            product.image
                .resizable()
                .frame(width: 160, height: 160)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius: 10)
                .padding(.top,30)
            VStack(alignment: .leading, spacing: 10.0) {
                Text(product.name)
                Text("Price\t: \(product.price)")
                Text("Stock\t: \(product.stock)")
                Text(product.description)
            }.padding(5)
            Spacer()
        }
        .navigationBarTitle(Text(verbatim: product.name), displayMode: .inline)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: productData[0])
    }
}

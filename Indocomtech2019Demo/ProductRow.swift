//
//  ProductRow.swift
//  IndocomfestDemo
//
//  Created by ibrahim on 30/10/19.
//  Copyright © 2019 ibrahim. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
     var product: Product

       var body: some View {
        HStack() {
                product.image
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 4))
                    .shadow(radius: 10)
                VStack(alignment: .leading){
                    Text(product.name)
                    Text("price : \(product.price)")
                }
           }
       }
}

struct ProductRow_Previews: PreviewProvider {
   static var previews: some View {
       Group {
           ProductRow(product: productData[0])
           ProductRow(product: productData[1])
       }
       .previewLayout(.fixed(width: 300, height: 100))
   }
}

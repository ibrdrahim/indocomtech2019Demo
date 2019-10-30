//
//  ProductList.swift
//  IndocomfestDemo
//
//  Created by ibrahim on 30/10/19.
//  Copyright © 2019 ibrahim. All rights reserved.
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        NavigationView {
            // Create List of product
            List(productData) { product in
                // create navigation link button for product row with product detail as destination
                NavigationLink(destination: ProductDetail(product: product)) {
                    ProductRow(product: product)
                }
            }
            .navigationBarTitle(Text("Products Catalogue"))
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
           ProductList()
    }
}

//
//  ProductItemView.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

import SwiftUI

struct ProductItemView: View {
    
    var product: Product
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    VStack (alignment: .leading) {
                        Text(product.title)
                            .bold()
                            .font(.system(size: 20))
                        
                        Text(product.description)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 4)
                            .padding(.bottom)
                        
                        HStack {
                            Text(String(product.price))
                            Spacer()
                            Text(product.category?.name ?? "")
                        }
                    }
                    .padding(.top, 50)
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .padding()
                .background(
                    ZStack{
                        //                        KFImage(URL(string: articleEntity.imageURL))
                        //                            .centerCropped()
                        
                        Rectangle()
                            .foregroundColor(.clear)
                        
                    }
                )
                .padding(.horizontal, 20)
                .padding(.trailing, 20)
                .frame(maxWidth:.infinity)
            }
            .padding(.top, 30)
        }
    }
}

struct ProductItemViewItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: ProductMock.model())
    }
}


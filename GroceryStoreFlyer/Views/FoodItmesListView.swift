//
//  FoodItmesListView.swift
//  GroceryStoreFlyer
//
//  Created by Xinchen Ji on 2025-01-08.
//

import SwiftUI

struct FoodItemsListView: View {
    let departmentToShow: Department
    var body: some View {
            List(departmentToShow.items) {currentItem in
                HStack{
                    VStack(alignment: .leading){
                        Text(currentItem.name)
                            .bold()
                            .font(Font.custom("Times New Roman", size: 27))
                        
                        Image(currentItem.image)
                            .resizable()
                            .scaledToFit()
                        
                        HStack{
                            Text(currentItem.price)
                                .font(Font.custom("Times New Roman", size: 25))
                            Text("$")
                                .font(Font.custom("Times New Roman", size: 30))
                                .bold()
                        }
                    }
                }
                    
            }
                .navigationTitle(departmentToShow.name)
    }
}

#Preview {
    NavigationStack{
        FoodItemsListView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}

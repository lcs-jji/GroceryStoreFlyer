//
//  ContentView.swift
//  GroceryStoreFlyer
//
//  Created by Xinchen Ji on 2025-01-08.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        
        NavigationStack{
            
            List(thisWeeksFlyer.departments) { currentDepartment in
                
                NavigationLink {
                    FoodItemsListView(departmentToShow: currentDepartment)
                } label: {
                    Text(currentDepartment.name)
                }

                }
            .navigationTitle("Weekly Flyer")
            }
            
        }
    }


#Preview {
    DepartmentsListView()
}


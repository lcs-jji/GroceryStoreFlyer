//
//  Flyer.swift
//  GroceryStoreFlyer
//
//  Created by Xinchen Ji on 2025-01-08.
//
import Foundation

struct Flyer {
    let departments: [Department]
}
 
struct Department: Identifiable {
    let id = UUID()
    let name: String
    let items: [FoodItem]
}
 
struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: String
}


let thisWeeksFlyer = Flyer(
    
    departments: [
        
        Department(
            name: "Butcher's Best",
            items: [
                FoodItem(
                    name: "Sirloin Tip Oven Roasts",
                    image: "sirloin-tips",
                    price: "29.99"
                ),
                FoodItem(
                    name: "Porkloin Back Ribs",
                    image: "porkloin-back-ribs",
                    price: "21.67"
                ),
            ]
        ),
 
        Department(
            name: "Seafood",
            items: [
                FoodItem(
                    name: "Wild Pacific Halibut Fillets",
                    image: "wild-pacific-halibut-fillets",
                    price: "24.55"
                ),
                FoodItem(
                    name: "Wild Sockeye Salmon Fillets",
                    image: "wild-sockeye-salmon-fillets",
                    price: "19.87"
                ),
                FoodItem(
                    name: "Clam Chowder",
                    image: "clam-chowder",
                    price: "12.89"
                ),
            ]
        ),
        
        Department(
            name: "Deli",
            items: [
                FoodItem(
                    name: "Homemade Chorizo",
                    image: "homemade-chorizo",
                    price: "46.79"
                ),
                FoodItem(
                    name: "Butcher Shoppe Pancetta",
                    image: "butcher-shoppe-pancetta",
                    price: "57.67"
                ),
            ]
        ),
        
        
    ]
)

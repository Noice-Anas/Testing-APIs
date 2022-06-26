//
//  Model_Post.swift
//  TestingAPIS
//
//  Created by Noice_anas on 26/06/2022.
//

import SwiftUI

// MARK: - AddCar
struct AddCar: Codable {
    let customerID: Int
    let makeID: Int
    let name: String
    let modelID: Int
    let addCarDescription: String?
    let year: Int
    let registrationNo: String
    let imagePath: String?
    let statusID: Int
    let locationID: Int = 2
    let userID: Int = 4

    enum CodingKeys: String, CodingKey {
        case customerID = "CustomerID"
        case makeID = "MakeID"
        case name = "Name"
        case modelID = "ModelID"
        case addCarDescription = "Description"
        case year = "Year"
        case registrationNo = "RegistrationNo"
        case imagePath = "ImagePath"
        case statusID = "StatusID"
        case locationID = "LocationID"
        case userID = "UserID"
    }
}

// MARK: - ResponseModel
struct ResponseModel: Codable {
    let cars: Cars?
    let responseModelDescription: String?
    let status: Int?

    enum CodingKeys: String, CodingKey {
        case cars = "cars"
        case responseModelDescription = "Description"
        case status = "Status"
    }
}

// MARK: - Cars
struct Cars: Codable {
    let orders: [Order]?
    let companyName: String?
    let companyImage: String?
    let carID: Int?
    let rowID: Int?
    let customerID: Int?
    let makeID: Int?
    let makerImage: String?
    let makerName: String?
    let modelID: Int?
    let modelName: String?
    let name: String?
    let carsDescription: String?
    let year: Int?
    let registrationNo: String?
    let imagePath: String?
    let makeImage: String?
    let locationID: Int?
    let sessionID: String?
    let registrationNoP1: String?
    let registrationNoP2: String?
    let registrationNoP3: String?
    let registrationNoP4: String?
    let userID: Int?
    let statusID: Int?

    enum CodingKeys: String, CodingKey {
        case orders = "Orders"
        case companyName = "CompanyName"
        case companyImage = "CompanyImage"
        case carID = "CarID"
        case rowID = "RowID"
        case customerID = "CustomerID"
        case makeID = "MakeID"
        case makerImage = "MakerImage"
        case makerName = "MakerName"
        case modelID = "ModelID"
        case modelName = "ModelName"
        case name = "Name"
        case carsDescription = "Description"
        case year = "Year"
        case registrationNo = "RegistrationNo"
        case imagePath = "ImagePath"
        case makeImage = "MakeImage"
        case locationID = "LocationID"
        case sessionID = "SessionID"
        case registrationNoP1 = "RegistrationNoP1"
        case registrationNoP2 = "RegistrationNoP2"
        case registrationNoP3 = "RegistrationNoP3"
        case registrationNoP4 = "RegistrationNoP4"
        case userID = "UserID"
        case statusID = "StatusID"
    }
}

// MARK: - Order
struct Order: Codable {
    let items: [Item]?
    let companyName: String?
    let companyImage: String?
    let orderCheckoutID: Int?
    let orderID: Int?
    let transactionNo: Int?
    let orderNo: Int?
    let carID: Int?
    let bayName: String?
    let customerID: Int?
    let locationID: Int?
    let orderPunchDate: String?
    let checkoutDate: String?
    let mechanicName: String?
    let status: Int?
    let paymentMode: Int?
    let amountTotal: Double?
    let tax: Double?
    let amountDiscount: Double?
    let refundedAmount: Double?
    let grandTotal: Double?
    let isPartialPaid: Bool?
    let discountCode: String?

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case companyName = "CompanyName"
        case companyImage = "CompanyImage"
        case orderCheckoutID = "OrderCheckoutID"
        case orderID = "OrderID"
        case transactionNo = "TransactionNo"
        case orderNo = "OrderNo"
        case carID = "CarID"
        case bayName = "BayName"
        case customerID = "CustomerID"
        case locationID = "LocationID"
        case orderPunchDate = "OrderPunchDate"
        case checkoutDate = "CheckoutDate"
        case mechanicName = "MechanicName"
        case status = "Status"
        case paymentMode = "PaymentMode"
        case amountTotal = "AmountTotal"
        case tax = "Tax"
        case amountDiscount = "AmountDiscount"
        case refundedAmount = "RefundedAmount"
        case grandTotal = "GrandTotal"
        case isPartialPaid = "IsPartialPaid"
        case discountCode = "DiscountCode"
    }
}

// MARK: - Item
struct Item: Codable {
    let orderDetailID: Int?
    let orderID: Int?
    let itemID: Int?
    let packageID: Int?
    let itemName: String?
    let alternateName: String?
    let itemImage: String?
    let quantity: Double?
    let refundQty: Double?
    let price: Double?
    let discountAmount: Double?
    let refundAmount: Double?
    let cost: Double?
    let statusID: Int?

    enum CodingKeys: String, CodingKey {
        case orderDetailID = "OrderDetailID"
        case orderID = "OrderID"
        case itemID = "ItemID"
        case packageID = "PackageID"
        case itemName = "ItemName"
        case alternateName = "AlternateName"
        case itemImage = "ItemImage"
        case quantity = "Quantity"
        case refundQty = "RefundQty"
        case price = "Price"
        case discountAmount = "DiscountAmount"
        case refundAmount = "RefundAmount"
        case cost = "Cost"
        case statusID = "StatusID"
    }
}


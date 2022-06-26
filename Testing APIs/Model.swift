// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let settings = try? newJSONDecoder().decode(Settings.self, from: jsonData)

import Foundation

// MARK: - Settings
struct Settings_Model: Codable {
    let location: [Location]
    let services: [Service]
    let settings: [Setting]
    let status: Int
    let settingsDescription: String

    enum CodingKeys: String, CodingKey {
        case location = "Location"
        case services = "Services"
        case settings = "Settings"
        case status = "Status"
        case settingsDescription = "Description"
    }
}

// MARK: - Location
struct Location: Codable {
    let locationID: Int
    let brandName: String?
    let brandImage: String?
    let name: String?
    let locationDescription: String?
    let address: String?
    let contactNo: String?
    let email: String?
    let longitude: String?
    let latitude: String?
    let openTime: String?
    let closeTime: String?
    let rating: String?
    let website: String?
    let isFeatured: Bool
    let services: [Service]
    let locationImages: [LocationImage]
    let amenities: [Amenity]
    let reviews: [Review]
    let discounts: [Discount]

    enum CodingKeys: String, CodingKey {
        case locationID = "LocationID"
        case brandName = "BrandName"
        case brandImage = "BrandImage"
        case name = "Name"
        case locationDescription = "Description"
        case address = "Address"
        case contactNo = "ContactNo"
        case email = "Email"
        case longitude = "Longitude"
        case latitude = "Latitude"
        case openTime = "OpenTime"
        case closeTime = "CloseTime"
        case rating = "Rating"
        case website = "Website"
        case isFeatured = "IsFeatured"
        case services = "Services"
        case locationImages = "LocationImages"
        case amenities = "Amenities"
        case reviews = "Reviews"
        case discounts = "Discounts"
    }
}

// MARK: - Amenity
struct Amenity: Codable {
    let amenitiesID: Int
    let name: String?
    let image: String?
    let locationID: Int?

    enum CodingKeys: String, CodingKey {
        case amenitiesID = "AmenitiesID"
        case name = "Name"
        case image = "Image"
        case locationID = "LocationID"
    }
}

// MARK: - Discount
struct Discount: Codable {
    let name: String
    let image: String?
    let fromDate: String?
    let toDate: String?
    let locationID: Int
    let discountID: Int

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case image = "Image"
        case fromDate = "FromDate"
        case toDate = "ToDate"
        case locationID = "LocationID"
        case discountID = "DiscountID"
    }
}

// MARK: - LocationImage
struct LocationImage: Codable {
    let imageID: Int
    let imageURL: String
    let locationID: Int

    enum CodingKeys: String, CodingKey {
        case imageID = "ImageID"
        case imageURL = "ImageURL"
        case locationID = "LocationID"
    }
}

// MARK: - Review
struct Review: Codable {
    let reviewID: Int
    let name: String?
    let message: String?
    let rate: String?
    let date: String?
    let image: String?
    let locationID: Int

    enum CodingKeys: String, CodingKey {
        case reviewID = "ReviewID"
        case name = "Name"
        case message = "Message"
        case rate = "Rate"
        case date = "Date"
        case image = "Image"
        case locationID = "LocationID"
    }
}

// MARK: - Service
struct Service: Codable {
    let serviceID: Int?
    let serviceTitle: String?
    let serviceDescription: String?
    let image: String?
    let displayOrder: Int?
    let locationID: Int?

    enum CodingKeys: String, CodingKey {
        case serviceID = "ServiceID"
        case serviceTitle = "ServiceTitle"
        case serviceDescription = "ServiceDescription"
        case image = "Image"
        case displayOrder = "DisplayOrder"
        case locationID = "LocationID"
    }
}

// MARK: - Setting
struct Setting: Codable {
    let id: Int
    let title: String?
    let settingDescription: String?
    let image: String
    let pageName: String
    let type: String
    let displayOrder: Int

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case title = "Title"
        case settingDescription = "Description"
        case image = "Image"
        case pageName = "PageName"
        case type = "Type"
        case displayOrder = "DisplayOrder"
    }
}

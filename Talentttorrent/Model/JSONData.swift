//
//  JSONData.swift
//  Talentttorrent
//
//  Created by Md Ashfaqur Rahman on 2/4/21.
//


import Foundation

struct JSONData: Codable {
    let success: Bool?
    let data: [Datas]
    let meta: Meta
}

struct Datas: Codable {
    let id: Int?
    let first_name: String?
    let last_name: String?
    let email: String?
    let username: String?
    let type: String?
    let profile: Profile
    let verified_at: String?
    let created_at: String?
    let updated_at: String?
    
}

struct Meta: Codable {
    let last_page: Int?
    let next_page_url: String?
    let prev_page_url: String?
    let total: Int?
}

struct Profile: Codable {
    let id: Int?
    let is_public: Int?
    let avatar_url: String?
    let cover_photo_url: String?
    let date_of_birth: String?
    let phone: String?
    let qualification: String?
    let experience: String?
    let skills: [String]?
    let business_number: String?
    let cover_letter: String?
    let job_title: String?
    let company_name: String?
    let company_size: String?
    let business_type: String?
    let company_registration_number: String?
    let location: String?
    let country: String?
    let created_at: String?
    let updated_at: String?
}


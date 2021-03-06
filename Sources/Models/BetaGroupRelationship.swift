//
//  BetaGroupRelationship.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 17/11/2018.
//

import Foundation

public enum BetaGroupRelationship: Decodable {
    case app(App)
    case build(Build)
    case betaTester(BetaTester)
    
    public init(from decoder: Decoder) throws {
        enum CodingKeys: String, Decodable, CodingKey {
            case type
            case apps, builds, betaTesters
        }
        
        switch try decoder.container(keyedBy: CodingKeys.self).decode(CodingKeys.self, forKey: .type) {
        case .apps:
            self = try .app(App(from: decoder))
        case .builds:
            self = try .build(Build(from: decoder))
        case .betaTesters:
            self = try .betaTester(BetaTester(from: decoder))
        default:
            throw DecodingError.typeMismatch(
                BetaGroupRelationship.self,
                DecodingError.Context(codingPath: [], debugDescription: "Not convertable to \(BetaGroupRelationship.self)")
            )
        }
    }
}

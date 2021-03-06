//
//  BetaAppReviewSubmission.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// The data structure that represents the resource.
public struct BetaAppReviewSubmission: Decodable {

    /// The resource's attributes.
    public let attributes: BetaAppReviewSubmission.Attributes?

    /// (Required) The opaque resource ID that uniquely identifies the resource.
    public let `id`: String

    /// (Required) Navigational links that include the self-link.
    public let links: ResourceLinks

    /// Navigational links to related data and included resource types and IDs.
    public let relationships: BetaAppReviewSubmission.Relationships?

    /// (Required) The resource type.Value: betaAppReviewSubmissions
    public let type: String

    /// Attributes that describe a resource.
    public struct Attributes: Decodable {
    
        /// A state that indicates the current status of the beta app review submission.
        public let betaReviewState: BetaReviewState?
    }

    public struct Relationships: Decodable {
    
        /// BetaAppReviewSubmission.Relationships.Build
        public let build: BetaAppReviewSubmission.Relationships.Build?
    }
}

/// MARK: BetaAppReviewSubmission.Relationships
extension BetaAppReviewSubmission.Relationships {
    
    public struct Build: Decodable {
    
        /// BetaAppReviewSubmission.Relationships.Build.Data
        public let data: BetaAppReviewSubmission.Relationships.Build.Data?
    
        /// BetaAppReviewSubmission.Relationships.Build.Links
        public let links: BetaAppReviewSubmission.Relationships.Build.Links?
    }
}

/// MARK: BetaAppReviewSubmission.Relationships.Build
extension BetaAppReviewSubmission.Relationships.Build {
    
    public struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: builds
        public let type: String
    }
    
    public struct Links: Decodable {
    
        /// uri-reference
        public let related: URL?
    
        /// uri-reference
        public let `self`: URL?
    }
}

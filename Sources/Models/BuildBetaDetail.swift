//
//  BuildBetaDetail.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// The data structure that represents the resource.
public struct BuildBetaDetail: Decodable {

    /// The resource's attributes.
    public let attributes: BuildBetaDetail.Attributes?

    /// (Required) The opaque resource ID that uniquely identifies the resource.
    public let `id`: String

    /// Navigational links to related data and included resource types and IDs.
    public let relationships: BuildBetaDetail.Relationships?

    /// (Required) The resource type.Value: buildBetaDetails
    public let type: String

    /// (Required) Navigational links that include the self-link.
    public let links: ResourceLinks

    /// Attributes that describe a resource.
    public struct Attributes: Decodable {
    
        /// A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
        public let autoNotifyEnabled: Bool?
    
        /// A state that indicates if the build is available for external testing.
        public let externalBuildState: ExternalBetaState?
    
        /// A state that indicates if the build is available for internal testing.
        public let internalBuildState: InternalBetaState?
    }
    
    public struct Relationships: Decodable {
    
        /// BuildBetaDetail.Relationships.Build
        public let build: BuildBetaDetail.Relationships.Build?
    }
}

/// MARK: BuildBetaDetail.Relationships
extension BuildBetaDetail.Relationships {
    
    public struct Build: Decodable {
    
        /// BuildBetaDetail.Relationships.Build.Data
        public let data: BuildBetaDetail.Relationships.Build.Data?
    
        /// BuildBetaDetail.Relationships.Build.Links
        public let links: BuildBetaDetail.Relationships.Build.Links?
    }
}

/// MARK: BuildBetaDetail.Relationships.Build
extension BuildBetaDetail.Relationships.Build {
    
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

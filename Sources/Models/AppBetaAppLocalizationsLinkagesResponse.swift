//
//  AppBetaAppLocalizationsLinkagesResponse.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Pascal Edmond on 12/11/2018.
//

import Foundation
    
/// A response containing a list of related resource IDs.
public struct AppBetaAppLocalizationsLinkagesResponse: Decodable {

    /// (Required) The object types and IDs of the related resources.
    public let data: [AppBetaAppLocalizationsLinkagesResponse.Data]

    /// (Required) Navigational links including the self-link and links to the related data.
    public let links: PagedDocumentLinks

    /// Paging information.
    public let meta: PagingInformation?
    
    public struct Data: Decodable {
    
        /// (Required) The opaque resource ID that uniquely identifies the resource.
        public let `id`: String
    
        /// (Required) The resource type.Value: betaAppLocalizations
        public let type: String
    }
}

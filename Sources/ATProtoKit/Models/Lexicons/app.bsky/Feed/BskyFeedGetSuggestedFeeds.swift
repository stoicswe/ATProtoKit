//
//  BskyFeedGetSuggestedFeeds.swift
//
//
//  Created by Christopher Jr Riley on 2024-03-06.
//

import Foundation

/// The main data model definition for the output of getting a list of feed generators suggested
/// for the user account.
///
/// - Note: According to the AT Protocol specifications: "Get a list of suggested feeds
/// (feed generators) for the requesting account."
///
/// - SeeAlso: This is based on the [`app.bsky.feed.getSuggestedFeeds`][github] lexicon.
///
/// [github]: https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/feed/getSuggestedFeeds.json
public struct FeedGetSuggestedFeedsOutput: Codable {
    /// The mark used to indicate the starting point for the next set of result. Optional.
    public let cursor: String?
    /// An array of feed generators.
    public let feeds: [FeedGeneratorView]
}

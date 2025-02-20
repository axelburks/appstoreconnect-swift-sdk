// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboardSetLocalizations.WithID {
	public var gameCenterLeaderboardSetImage: GameCenterLeaderboardSetImage {
		GameCenterLeaderboardSetImage(path: path + "/gameCenterLeaderboardSetImage")
	}

	public struct GameCenterLeaderboardSetImage {
		/// Path: `/v1/gameCenterLeaderboardSetLocalizations/{id}/gameCenterLeaderboardSetImage`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetImageResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterLeaderboardSetLocalizations_gameCenterLeaderboardSetImage_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]?
			public var fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardSetImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case gameCenterLeaderboardSetLocalization
			}

			public enum FieldsGameCenterLeaderboardSetLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case gameCenterLeaderboardSet
				case gameCenterLeaderboardSetImage
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboardSetLocalization
			}

			public init(fieldsGameCenterLeaderboardSetImages: [FieldsGameCenterLeaderboardSetImages]? = nil, fieldsGameCenterLeaderboardSetLocalizations: [FieldsGameCenterLeaderboardSetLocalizations]? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterLeaderboardSetImages = fieldsGameCenterLeaderboardSetImages
				self.fieldsGameCenterLeaderboardSetLocalizations = fieldsGameCenterLeaderboardSetLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardSetImages, forKey: "fields[gameCenterLeaderboardSetImages]")
				encoder.encode(fieldsGameCenterLeaderboardSetLocalizations, forKey: "fields[gameCenterLeaderboardSetLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}

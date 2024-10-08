// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterGroups {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterGroups/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterGroupResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterGroups_getInstance")
		}

		public struct GetParameters {
			public var fieldsGameCenterGroups: [FieldsGameCenterGroups]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterAchievements: [FieldsGameCenterAchievements]?
			public var include: [Include]?
			public var limitGameCenterAchievements: Int?
			public var limitGameCenterDetails: Int?
			public var limitGameCenterLeaderboardSets: Int?
			public var limitGameCenterLeaderboards: Int?

			public enum FieldsGameCenterGroups: String, Codable, CaseIterable {
				case referenceName
				case gameCenterDetails
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
			}

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case arcadeEnabled
				case challengeEnabled
				case app
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
				case defaultLeaderboard
				case defaultGroupLeaderboard
				case achievementReleases
				case leaderboardReleases
				case leaderboardSetReleases
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case defaultFormatter
				case referenceName
				case vendorIdentifier
				case submissionType
				case scoreSortType
				case scoreRangeStart
				case scoreRangeEnd
				case recurrenceStartDate
				case recurrenceDuration
				case recurrenceRule
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboard
				case gameCenterLeaderboardSets
				case localizations
				case releases
			}

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case referenceName
				case vendorIdentifier
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboardSet
				case localizations
				case gameCenterLeaderboards
				case releases
			}

			public enum FieldsGameCenterAchievements: String, Codable, CaseIterable {
				case referenceName
				case vendorIdentifier
				case points
				case showBeforeEarned
				case repeatable
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupAchievement
				case localizations
				case releases
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterDetails
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
			}

			public init(fieldsGameCenterGroups: [FieldsGameCenterGroups]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterAchievements: [FieldsGameCenterAchievements]? = nil, include: [Include]? = nil, limitGameCenterAchievements: Int? = nil, limitGameCenterDetails: Int? = nil, limitGameCenterLeaderboardSets: Int? = nil, limitGameCenterLeaderboards: Int? = nil) {
				self.fieldsGameCenterGroups = fieldsGameCenterGroups
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterAchievements = fieldsGameCenterAchievements
				self.include = include
				self.limitGameCenterAchievements = limitGameCenterAchievements
				self.limitGameCenterDetails = limitGameCenterDetails
				self.limitGameCenterLeaderboardSets = limitGameCenterLeaderboardSets
				self.limitGameCenterLeaderboards = limitGameCenterLeaderboards
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterGroups, forKey: "fields[gameCenterGroups]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterAchievements, forKey: "fields[gameCenterAchievements]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitGameCenterAchievements, forKey: "limit[gameCenterAchievements]")
				encoder.encode(limitGameCenterDetails, forKey: "limit[gameCenterDetails]")
				encoder.encode(limitGameCenterLeaderboardSets, forKey: "limit[gameCenterLeaderboardSets]")
				encoder.encode(limitGameCenterLeaderboards, forKey: "limit[gameCenterLeaderboards]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterGroupUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterGroupResponse> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterGroups_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterGroups_deleteInstance")
		}
	}
}

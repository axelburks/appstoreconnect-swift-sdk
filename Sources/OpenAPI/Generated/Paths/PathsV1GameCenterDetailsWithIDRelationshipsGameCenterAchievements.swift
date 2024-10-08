// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Relationships {
	public var gameCenterAchievements: GameCenterAchievements {
		GameCenterAchievements(path: path + "/gameCenterAchievements")
	}

	public struct GameCenterAchievements {
		/// Path: `/v1/gameCenterDetails/{id}/relationships/gameCenterAchievements`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterDetailGameCenterAchievementsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterDetails_gameCenterAchievements_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterDetailGameCenterAchievementsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterDetails_gameCenterAchievements_replaceToManyRelationship")
		}
	}
}

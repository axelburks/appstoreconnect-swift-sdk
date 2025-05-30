// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipAdvancedExperiences {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipAdvancedExperiences/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipAdvancedExperienceResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipAdvancedExperiences_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]?
			public var include: [Include]?
			public var limitLocalizations: Int?

			public enum FieldsAppClipAdvancedExperiences: String, Codable, CaseIterable {
				case link
				case version
				case status
				case action
				case isPoweredBy
				case place
				case placeStatus
				case businessCategory
				case defaultLanguage
				case appClip
				case headerImage
				case localizations
			}

			public enum Include: String, Codable, CaseIterable {
				case appClip
				case headerImage
				case localizations
			}

			public init(fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]? = nil, include: [Include]? = nil, limitLocalizations: Int? = nil) {
				self.fieldsAppClipAdvancedExperiences = fieldsAppClipAdvancedExperiences
				self.include = include
				self.limitLocalizations = limitLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipAdvancedExperiences, forKey: "fields[appClipAdvancedExperiences]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppClipAdvancedExperienceUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipAdvancedExperienceResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appClipAdvancedExperiences_updateInstance")
		}
	}
}

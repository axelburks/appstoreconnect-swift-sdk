// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.AppAvailabilities {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v2/appAvailabilities/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppAvailabilityV2Response> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appAvailabilitiesV2_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppAvailabilities: [FieldsAppAvailabilities]?
			public var fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]?
			public var include: [Include]?
			public var limitTerritoryAvailabilities: Int?

			public enum FieldsAppAvailabilities: String, Codable, CaseIterable {
				case availableInNewTerritories
				case territoryAvailabilities
			}

			public enum FieldsTerritoryAvailabilities: String, Codable, CaseIterable {
				case available
				case releaseDate
				case preOrderEnabled
				case preOrderPublishDate
				case contentStatuses
				case territory
			}

			public enum Include: String, Codable, CaseIterable {
				case territoryAvailabilities
			}

			public init(fieldsAppAvailabilities: [FieldsAppAvailabilities]? = nil, fieldsTerritoryAvailabilities: [FieldsTerritoryAvailabilities]? = nil, include: [Include]? = nil, limitTerritoryAvailabilities: Int? = nil) {
				self.fieldsAppAvailabilities = fieldsAppAvailabilities
				self.fieldsTerritoryAvailabilities = fieldsTerritoryAvailabilities
				self.include = include
				self.limitTerritoryAvailabilities = limitTerritoryAvailabilities
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppAvailabilities, forKey: "fields[appAvailabilities]")
				encoder.encode(fieldsTerritoryAvailabilities, forKey: "fields[territoryAvailabilities]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitTerritoryAvailabilities, forKey: "limit[territoryAvailabilities]")
				return encoder.items
			}
		}
	}
}

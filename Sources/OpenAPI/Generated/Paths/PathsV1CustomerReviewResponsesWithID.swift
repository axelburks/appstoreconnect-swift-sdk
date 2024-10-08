// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CustomerReviewResponses {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/customerReviewResponses/{id}`
		public let path: String

		public func get(fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.CustomerReviewResponseV1Response> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsCustomerReviewResponses, include), id: "customerReviewResponses_getInstance")
		}

		private func makeGetQuery(_ fieldsCustomerReviewResponses: [FieldsCustomerReviewResponses]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsCustomerReviewResponses, forKey: "fields[customerReviewResponses]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsCustomerReviewResponses: String, Codable, CaseIterable {
			case responseBody
			case lastModifiedDate
			case state
			case review
		}

		public enum Include: String, Codable, CaseIterable {
			case review
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "customerReviewResponses_deleteInstance")
		}
	}
}

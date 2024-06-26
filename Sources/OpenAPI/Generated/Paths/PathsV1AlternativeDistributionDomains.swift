// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var alternativeDistributionDomains: AlternativeDistributionDomains {
		AlternativeDistributionDomains(path: path + "/alternativeDistributionDomains")
	}

	public struct AlternativeDistributionDomains {
		/// Path: `/v1/alternativeDistributionDomains`
		public let path: String

		public func get(fieldsAlternativeDistributionDomains: [FieldsAlternativeDistributionDomains]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionDomainsResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAlternativeDistributionDomains, limit), id: "alternativeDistributionDomains-get_collection")
		}

		private func makeGetQuery(_ fieldsAlternativeDistributionDomains: [FieldsAlternativeDistributionDomains]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAlternativeDistributionDomains, forKey: "fields[alternativeDistributionDomains]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsAlternativeDistributionDomains: String, Codable, CaseIterable {
			case createdDate
			case domain
			case referenceName
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.AlternativeDistributionDomainCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionDomainResponse> {
			Request(path: path, method: "POST", body: body, id: "alternativeDistributionDomains-create_instance")
		}
	}
}

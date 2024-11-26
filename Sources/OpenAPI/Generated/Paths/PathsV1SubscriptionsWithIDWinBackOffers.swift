// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var winBackOffers: WinBackOffers {
		WinBackOffers(path: path + "/winBackOffers")
	}

	public struct WinBackOffers {
		/// Path: `/v1/subscriptions/{id}/winBackOffers`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.WinBackOffersResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptions_winBackOffers_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsWinBackOffers: [FieldsWinBackOffers]?
			public var fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices]?
			public var limit: Int?
			public var include: [Include]?
			public var limitPrices: Int?

			public enum FieldsWinBackOffers: String, Codable, CaseIterable {
				case referenceName
				case offerID = "offerId"
				case duration
				case offerMode
				case periodCount
				case customerEligibilityPaidSubscriptionDurationInMonths
				case customerEligibilityTimeSinceLastSubscribedInMonths
				case customerEligibilityWaitBetweenOffersInMonths
				case startDate
				case endDate
				case priority
				case promotionIntent
				case prices
			}

			public enum FieldsWinBackOfferPrices: String, Codable, CaseIterable {
				case territory
				case subscriptionPricePoint
			}

			public enum Include: String, Codable, CaseIterable {
				case prices
			}

			public init(fieldsWinBackOffers: [FieldsWinBackOffers]? = nil, fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices]? = nil, limit: Int? = nil, include: [Include]? = nil, limitPrices: Int? = nil) {
				self.fieldsWinBackOffers = fieldsWinBackOffers
				self.fieldsWinBackOfferPrices = fieldsWinBackOfferPrices
				self.limit = limit
				self.include = include
				self.limitPrices = limitPrices
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsWinBackOffers, forKey: "fields[winBackOffers]")
				encoder.encode(fieldsWinBackOfferPrices, forKey: "fields[winBackOfferPrices]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitPrices, forKey: "limit[prices]")
				return encoder.items
			}
		}
	}
}
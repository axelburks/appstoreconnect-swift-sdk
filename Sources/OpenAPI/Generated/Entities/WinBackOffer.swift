// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct WinBackOffer: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case winBackOffers
	}

	public struct Attributes: Codable {
		public var referenceName: String?
		public var offerID: String?
		public var duration: SubscriptionOfferDuration?
		public var offerMode: SubscriptionOfferMode?
		public var periodCount: Int?
		public var customerEligibilityPaidSubscriptionDurationInMonths: Int?
		public var customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange?
		public var customerEligibilityWaitBetweenOffersInMonths: Int?
		public var startDate: String?
		public var endDate: String?
		public var priority: Priority?
		public var promotionIntent: PromotionIntent?

		public enum Priority: String, Codable, CaseIterable {
			case high = "HIGH"
			case normal = "NORMAL"
		}

		public enum PromotionIntent: String, Codable, CaseIterable {
			case notPromoted = "NOT_PROMOTED"
			case useAutoGeneratedAssets = "USE_AUTO_GENERATED_ASSETS"
		}

		public init(referenceName: String? = nil, offerID: String? = nil, duration: SubscriptionOfferDuration? = nil, offerMode: SubscriptionOfferMode? = nil, periodCount: Int? = nil, customerEligibilityPaidSubscriptionDurationInMonths: Int? = nil, customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange? = nil, customerEligibilityWaitBetweenOffersInMonths: Int? = nil, startDate: String? = nil, endDate: String? = nil, priority: Priority? = nil, promotionIntent: PromotionIntent? = nil) {
			self.referenceName = referenceName
			self.offerID = offerID
			self.duration = duration
			self.offerMode = offerMode
			self.periodCount = periodCount
			self.customerEligibilityPaidSubscriptionDurationInMonths = customerEligibilityPaidSubscriptionDurationInMonths
			self.customerEligibilityTimeSinceLastSubscribedInMonths = customerEligibilityTimeSinceLastSubscribedInMonths
			self.customerEligibilityWaitBetweenOffersInMonths = customerEligibilityWaitBetweenOffersInMonths
			self.startDate = startDate
			self.endDate = endDate
			self.priority = priority
			self.promotionIntent = promotionIntent
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.referenceName = try values.decodeIfPresent(String.self, forKey: "referenceName")
			self.offerID = try values.decodeIfPresent(String.self, forKey: "offerId")
			self.duration = try values.decodeIfPresent(SubscriptionOfferDuration.self, forKey: "duration")
			self.offerMode = try values.decodeIfPresent(SubscriptionOfferMode.self, forKey: "offerMode")
			self.periodCount = try values.decodeIfPresent(Int.self, forKey: "periodCount")
			self.customerEligibilityPaidSubscriptionDurationInMonths = try values.decodeIfPresent(Int.self, forKey: "customerEligibilityPaidSubscriptionDurationInMonths")
			self.customerEligibilityTimeSinceLastSubscribedInMonths = try values.decodeIfPresent(IntegerRange.self, forKey: "customerEligibilityTimeSinceLastSubscribedInMonths")
			self.customerEligibilityWaitBetweenOffersInMonths = try values.decodeIfPresent(Int.self, forKey: "customerEligibilityWaitBetweenOffersInMonths")
			self.startDate = try values.decodeIfPresent(String.self, forKey: "startDate")
			self.endDate = try values.decodeIfPresent(String.self, forKey: "endDate")
			self.priority = try values.decodeIfPresent(Priority.self, forKey: "priority")
			self.promotionIntent = try values.decodeIfPresent(PromotionIntent.self, forKey: "promotionIntent")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(referenceName, forKey: "referenceName")
			try values.encodeIfPresent(offerID, forKey: "offerId")
			try values.encodeIfPresent(duration, forKey: "duration")
			try values.encodeIfPresent(offerMode, forKey: "offerMode")
			try values.encodeIfPresent(periodCount, forKey: "periodCount")
			try values.encodeIfPresent(customerEligibilityPaidSubscriptionDurationInMonths, forKey: "customerEligibilityPaidSubscriptionDurationInMonths")
			try values.encodeIfPresent(customerEligibilityTimeSinceLastSubscribedInMonths, forKey: "customerEligibilityTimeSinceLastSubscribedInMonths")
			try values.encodeIfPresent(customerEligibilityWaitBetweenOffersInMonths, forKey: "customerEligibilityWaitBetweenOffersInMonths")
			try values.encodeIfPresent(startDate, forKey: "startDate")
			try values.encodeIfPresent(endDate, forKey: "endDate")
			try values.encodeIfPresent(priority, forKey: "priority")
			try values.encodeIfPresent(promotionIntent, forKey: "promotionIntent")
		}
	}

	public struct Relationships: Codable {
		public var prices: Prices?

		public struct Prices: Codable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case winBackOfferPrices
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(prices: Prices? = nil) {
			self.prices = prices
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.prices = try values.decodeIfPresent(Prices.self, forKey: "prices")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(prices, forKey: "prices")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}

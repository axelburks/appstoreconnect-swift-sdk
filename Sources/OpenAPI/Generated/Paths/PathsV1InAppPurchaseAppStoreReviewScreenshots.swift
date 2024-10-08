// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var inAppPurchaseAppStoreReviewScreenshots: InAppPurchaseAppStoreReviewScreenshots {
		InAppPurchaseAppStoreReviewScreenshots(path: path + "/inAppPurchaseAppStoreReviewScreenshots")
	}

	public struct InAppPurchaseAppStoreReviewScreenshots {
		/// Path: `/v1/inAppPurchaseAppStoreReviewScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.InAppPurchaseAppStoreReviewScreenshotCreateRequest) -> Request<AppStoreConnect_Swift_SDK.InAppPurchaseAppStoreReviewScreenshotResponse> {
			Request(path: path, method: "POST", body: body, id: "inAppPurchaseAppStoreReviewScreenshots_createInstance")
		}
	}
}

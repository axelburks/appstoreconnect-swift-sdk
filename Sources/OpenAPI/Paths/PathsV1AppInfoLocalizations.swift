// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appInfoLocalizations: AppInfoLocalizations {
		AppInfoLocalizations(path: path + "/appInfoLocalizations")
	}

	public struct AppInfoLocalizations {
		/// Path: `/v1/appInfoLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppInfoLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationResponse> {
			.post(path, body: body)
		}
	}
}
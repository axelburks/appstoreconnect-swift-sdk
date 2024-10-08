// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations {
		AppClipDefaultExperienceLocalizations(path: path + "/appClipDefaultExperienceLocalizations")
	}

	public struct AppClipDefaultExperienceLocalizations {
		/// Path: `/v1/appClipDefaultExperienceLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationResponse> {
			Request(path: path, method: "POST", body: body, id: "appClipDefaultExperienceLocalizations_createInstance")
		}
	}
}

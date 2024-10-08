// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appScreenshots: AppScreenshots {
		AppScreenshots(path: path + "/appScreenshots")
	}

	public struct AppScreenshots {
		/// Path: `/v1/appScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppScreenshotCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotResponse> {
			Request(path: path, method: "POST", body: body, id: "appScreenshots_createInstance")
		}
	}
}

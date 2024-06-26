// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiBuildRuns.WithID {
	public var actions: Actions {
		Actions(path: path + "/actions")
	}

	public struct Actions {
		/// Path: `/v1/ciBuildRuns/{id}/actions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiBuildActionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciBuildRuns-actions-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var fieldsCiBuildActions: [FieldsCiBuildActions]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case actions
				case buildRun
				case builds
				case cancelReason
				case clean
				case completionStatus
				case createdDate
				case destinationBranch
				case destinationCommit
				case executionProgress
				case finishedDate
				case isPullRequestBuild
				case issueCounts
				case number
				case product
				case pullRequest
				case sourceBranchOrTag
				case sourceCommit
				case startReason
				case startedDate
				case workflow
			}

			public enum FieldsCiBuildActions: String, Codable, CaseIterable {
				case actionType
				case artifacts
				case buildRun
				case completionStatus
				case executionProgress
				case finishedDate
				case isRequiredToPass
				case issueCounts
				case issues
				case name
				case startedDate
				case testResults
			}

			public enum Include: String, Codable, CaseIterable {
				case buildRun
			}

			public init(fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.fieldsCiBuildActions = fieldsCiBuildActions
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}

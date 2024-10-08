// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiWorkflows.WithID {
	public var repository: Repository {
		Repository(path: path + "/repository")
	}

	public struct Repository {
		/// Path: `/v1/ciWorkflows/{id}/repository`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmRepositoryResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciWorkflows_repository_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var fieldsScmProviders: [FieldsScmProviders]?
			public var fieldsScmGitReferences: [FieldsScmGitReferences]?
			public var include: [Include]?

			public enum FieldsScmRepositories: String, Codable, CaseIterable {
				case lastAccessedDate
				case httpCloneURL = "httpCloneUrl"
				case sshCloneURL = "sshCloneUrl"
				case ownerName
				case repositoryName
				case scmProvider
				case defaultBranch
				case gitReferences
				case pullRequests
			}

			public enum FieldsScmProviders: String, Codable, CaseIterable {
				case scmProviderType
				case url
				case repositories
			}

			public enum FieldsScmGitReferences: String, Codable, CaseIterable {
				case name
				case canonicalName
				case isDeleted
				case kind
				case repository
			}

			public enum Include: String, Codable, CaseIterable {
				case scmProvider
				case defaultBranch
			}

			public init(fieldsScmRepositories: [FieldsScmRepositories]? = nil, fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, include: [Include]? = nil) {
				self.fieldsScmRepositories = fieldsScmRepositories
				self.fieldsScmProviders = fieldsScmProviders
				self.fieldsScmGitReferences = fieldsScmGitReferences
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
				encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}

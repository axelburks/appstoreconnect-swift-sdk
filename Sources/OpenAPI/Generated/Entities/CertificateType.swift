// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public enum CertificateType: String, Codable, CaseIterable {
	case applePay = "APPLE_PAY"
	case applePayMerchantIdentity = "APPLE_PAY_MERCHANT_IDENTITY"
	case applePayPspIdentity = "APPLE_PAY_PSP_IDENTITY"
	case applePayRsa = "APPLE_PAY_RSA"
	case developerIDKext = "DEVELOPER_ID_KEXT"
	case developerIDKextG2 = "DEVELOPER_ID_KEXT_G2"
	case developerIDApplication = "DEVELOPER_ID_APPLICATION"
	case developerIDApplicationG2 = "DEVELOPER_ID_APPLICATION_G2"
	case development = "DEVELOPMENT"
	case distribution = "DISTRIBUTION"
	case identityAccess = "IDENTITY_ACCESS"
	case iosDevelopment = "IOS_DEVELOPMENT"
	case iosDistribution = "IOS_DISTRIBUTION"
	case macAppDistribution = "MAC_APP_DISTRIBUTION"
	case macInstallerDistribution = "MAC_INSTALLER_DISTRIBUTION"
	case macAppDevelopment = "MAC_APP_DEVELOPMENT"
	case passTypeID = "PASS_TYPE_ID"
	case passTypeIDWithNfc = "PASS_TYPE_ID_WITH_NFC"
}

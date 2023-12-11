import SwiftUI
import Security

class KeychainManager {
    private let serviceName: String

    init(serviceName: String) {
        self.serviceName = serviceName
    }

    func saveDataToKeychain(_ data: Data, forKey key: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ]

        let status = SecItemAdd(query as CFDictionary, nil)

        if status != errSecSuccess {
            print("Error saving data to Keychain: \(status)")
        }
    }

    func loadDataFromKeychain(forKey key: String) -> Data? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key,
            kSecReturnData as String: kCFBooleanTrue!
        ]

        var data: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &data)

        if status != errSecSuccess {
            if status == errSecItemNotFound {
                print("Keychain item not found for key: \(key)")
            } else {
                print("Error loading data from Keychain: \(status)")
            }
            return nil
        }

        return data as? Data
    }

    func deleteDataFromKeychain(forKey key: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key
        ]

        let status = SecItemDelete(query as CFDictionary)

        if status != errSecSuccess && status != errSecItemNotFound {
            print("Error deleting data from Keychain: \(status)")
        }
    }
}

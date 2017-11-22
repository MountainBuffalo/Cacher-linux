import Foundation

extension String {
    func appending(pathExtension: String) -> String {
        return "/(self).\(pathExtension)"
    }
}

extension FileManager {
    
    func fileExists(atFileURL url: URL) -> Bool {
        guard url.isFileURL else { return false }
        return self.fileExists(atPath: url.path)
    }
}


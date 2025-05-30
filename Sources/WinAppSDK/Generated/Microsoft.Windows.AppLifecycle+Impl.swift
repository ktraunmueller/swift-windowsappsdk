// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

@_spi(WinRTInternal)
public enum __IMPL_Microsoft_Windows_AppLifecycle {
    public enum AppActivationArgumentsBridge: AbiBridge {
        public typealias SwiftProjection = AppActivationArguments
        public typealias CABI = __x_ABI_CMicrosoft_CWindows_CAppLifecycle_CIAppActivationArguments
        public static func from(abi: ComPtr<__x_ABI_CMicrosoft_CWindows_CAppLifecycle_CIAppActivationArguments>?) -> AppActivationArguments? {
            guard let abi = abi else { return nil }
            return .init(fromAbi: WindowsFoundation.IInspectable(abi))
        }
    }

    public enum AppInstanceBridge: AbiBridge {
        public typealias SwiftProjection = AppInstance
        public typealias CABI = __x_ABI_CMicrosoft_CWindows_CAppLifecycle_CIAppInstance
        public static func from(abi: ComPtr<__x_ABI_CMicrosoft_CWindows_CAppLifecycle_CIAppInstance>?) -> AppInstance? {
            guard let abi = abi else { return nil }
            return .init(fromAbi: WindowsFoundation.IInspectable(abi))
        }
    }

}
@_spi(WinRTInternal)
public class AppActivationArgumentsMaker: MakeFromAbi {
    public typealias SwiftType = AppActivationArguments
    public static func from(abi: WindowsFoundation.IInspectable) -> SwiftType {
        return AppActivationArguments(fromAbi: abi)
    }
}
@_spi(WinRTInternal)
public class AppInstanceMaker: MakeFromAbi {
    public typealias SwiftType = AppInstance
    public static func from(abi: WindowsFoundation.IInspectable) -> SwiftType {
        return AppInstance(fromAbi: abi)
    }
}

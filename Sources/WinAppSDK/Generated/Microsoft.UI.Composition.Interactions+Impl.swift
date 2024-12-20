// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

public enum __IMPL_Microsoft_UI_Composition_Interactions {
    public enum ICompositionInteractionSourceBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CComposition_CInteractions_CICompositionInteractionSource
        public typealias SwiftABI = __ABI_Microsoft_UI_Composition_Interactions.ICompositionInteractionSource
        public typealias SwiftProjection = AnyICompositionInteractionSource
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return ICompositionInteractionSourceImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Composition_Interactions.ICompositionInteractionSourceVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class ICompositionInteractionSourceImpl: ICompositionInteractionSource, WinRTAbiImpl {
        fileprivate typealias Bridge = ICompositionInteractionSourceBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

    }

    public enum IInteractionTrackerOwnerBridge : AbiInterfaceBridge {
        public typealias CABI = __x_ABI_CMicrosoft_CUI_CComposition_CInteractions_CIInteractionTrackerOwner
        public typealias SwiftABI = __ABI_Microsoft_UI_Composition_Interactions.IInteractionTrackerOwner
        public typealias SwiftProjection = AnyIInteractionTrackerOwner
        public static func from(abi: ComPtr<CABI>?) -> SwiftProjection? {
            guard let abi = abi else { return nil }
            return IInteractionTrackerOwnerImpl(abi)
        }

        public static func makeAbi() -> CABI {
            let vtblPtr = withUnsafeMutablePointer(to: &__ABI_Microsoft_UI_Composition_Interactions.IInteractionTrackerOwnerVTable) { $0 }
            return .init(lpVtbl: vtblPtr)
        }
    }

    fileprivate class IInteractionTrackerOwnerImpl: IInteractionTrackerOwner, WinRTAbiImpl {
        fileprivate typealias Bridge = IInteractionTrackerOwnerBridge
        fileprivate let _default: Bridge.SwiftABI
        fileprivate var thisPtr: WindowsFoundation.IInspectable { _default }
        fileprivate init(_ fromAbi: ComPtr<Bridge.CABI>) {
            _default = Bridge.SwiftABI(fromAbi)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.customanimationstateentered)
        fileprivate func customAnimationStateEntered(_ sender: InteractionTracker!, _ args: InteractionTrackerCustomAnimationStateEnteredArgs!) throws {
            try _default.CustomAnimationStateEnteredImpl(sender, args)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.idlestateentered)
        fileprivate func idleStateEntered(_ sender: InteractionTracker!, _ args: InteractionTrackerIdleStateEnteredArgs!) throws {
            try _default.IdleStateEnteredImpl(sender, args)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.inertiastateentered)
        fileprivate func inertiaStateEntered(_ sender: InteractionTracker!, _ args: InteractionTrackerInertiaStateEnteredArgs!) throws {
            try _default.InertiaStateEnteredImpl(sender, args)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.interactingstateentered)
        fileprivate func interactingStateEntered(_ sender: InteractionTracker!, _ args: InteractionTrackerInteractingStateEnteredArgs!) throws {
            try _default.InteractingStateEnteredImpl(sender, args)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.requestignored)
        fileprivate func requestIgnored(_ sender: InteractionTracker!, _ args: InteractionTrackerRequestIgnoredArgs!) throws {
            try _default.RequestIgnoredImpl(sender, args)
        }

        /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.composition.interactions.iinteractiontrackerowner.valueschanged)
        fileprivate func valuesChanged(_ sender: InteractionTracker!, _ args: InteractionTrackerValuesChangedArgs!) throws {
            try _default.ValuesChangedImpl(sender, args)
        }

    }

}

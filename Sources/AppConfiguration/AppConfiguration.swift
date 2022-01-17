@MainActor
public protocol AppConfigurationModule {
    
    static func setup()
    
}

@MainActor
public struct AppConfiguration {
    
    public static func setup(_ configurationModuleTypes: AppConfigurationModule.Type...) {
        for configurationModuleType in configurationModuleTypes {
            configurationModuleType.setup()
        }
    }
    
}

/// The base class for all Velvet configurations.
///
/// This abstract class serves as a marker for all configuration classes in the Velvet framework.
/// While currently empty, it is intended to provide a common base for future configuration classes
/// that might be added to the system. Any class that extends `VelvetConfig` will be treated as a configuration object,
/// ensuring consistency and extensibility within the framework.
///
/// ### Purpose
/// - **Common Base**: It establishes a common type for configuration objects across Velvet, ensuring that all configurations
///   share a unified structure, even if their contents differ.
/// - **Future Extensibility**: Though empty now, this class can be extended in the future to include shared properties or methods
///   for configuration management, such as loading configurations from files, serialization, or validation.
/// - **Type Safety**: It provides a strong type marker, so any class that extends `VelvetConfig` can be easily recognized
///   as a configuration object, adding consistency across the system.
/// - **Polymorphism**: It allows Velvet to handle different types of configuration objects polymorphically, enabling flexible
///   handling of various configuration types (e.g., database settings, API settings, etc.) without needing to know the
///   specific details of each configuration type.
///
/// ### Example:
/// ```dart
/// class DatabaseConfig extends VelvetConfig {
///   final String host;
///   final int port;
///
///   DatabaseConfig({required this.host, required this.port});
/// }
///
/// class ApiConfig extends VelvetConfig {
///   final String baseUrl;
///
///   ApiConfig({required this.baseUrl});
/// }
/// ```
/// In this example, both `DatabaseConfig` and `ApiConfig` extend `VelvetConfig`, making them identifiable as configuration
/// objects, while retaining their individual properties and behaviors.
///
/// ### Note:
/// Currently, this class is empty, but it is prepared for potential future enhancements that will allow for a shared configuration
/// mechanism across Velvet-based systems.
abstract class VelvetConfig {}

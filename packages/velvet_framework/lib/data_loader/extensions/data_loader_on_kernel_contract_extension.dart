import 'package:velvet_framework/data_loader/builders/constructor_data_loader_error_builder.dart';
import 'package:velvet_framework/data_loader/builders/constructor_data_loader_loading_builder.dart';
import 'package:velvet_framework/velvet_framework.dart';

extension DataLoaderOnKernelContractExtension on KernelContract {
  /// Customizes the error builder for the data loader.
  /// Use this method if you want to provide a custom error builder function.
  void withDataLoaderErrorBuilder(
    DataLoaderErrorBuilder builder,
  ) {
    container.registerLazySingleton<DataLoaderErrorBuilderContract>(
      () => ConstructorDataLoaderErrorBuilder(builder),
    );
  }

  /// Customize the error builder for the data loader.
  /// Use this method if you want to wrap the error builder with another class.
  void withDataLoaderErrorBuilderWrapper(
    DataLoaderErrorBuilderContract builder,
  ) {
    container.registerLazySingleton<DataLoaderErrorBuilderContract>(
      () => builder,
    );
  }

  /// Customizes the loading builder for the data loader.
  /// Use this method if you want to provide a custom loading builder function.
  void withDataLoaderLoadingBuilder(
    DataLoaderLoadingBuilder builder,
  ) {
    container.registerLazySingleton<DataLoaderLoadingBuilderContract>(
      () => ConstructorDataLoaderLoadingBuilder(builder),
    );
  }

  /// Customize the loading builder for the data loader.
  /// Use this method if you want to wrap the loading builder with another class.
  void withDataLoaderLoadingBuilderWrapper(
    DataLoaderLoadingBuilderContract builder,
  ) {
    container.registerLazySingleton<DataLoaderLoadingBuilderContract>(
      () => builder,
    );
  }
}
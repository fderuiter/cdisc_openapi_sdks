#import "OAIExportSendigDatasetsRow.h"

@implementation OAIExportSendigDatasetsRow

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"version": @"Version", @"_class": @"Class", @"datasetName": @"Dataset Name", @"datasetLabel": @"Dataset Label", @"structure": @"Structure" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"version", @"_class", @"datasetName", @"datasetLabel", @"structure"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "OAIExportAdamDatastructuresRow.h"

@implementation OAIExportAdamDatastructuresRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"version": @"Version", @"dataStructureName": @"Data Structure Name", @"datasetName": @"Dataset Name", @"datasetLabel": @"Dataset Label", @"datasetDescription": @"Dataset Description", @"_class": @"Class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"version", @"dataStructureName", @"datasetName", @"datasetLabel", @"datasetDescription", @"_class"];
  return [optionalProperties containsObject:propertyName];
}

@end

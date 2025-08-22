#import "OAISdtmDataset.h"

@implementation OAISdtmDataset

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ordinal": @"ordinal", @"name": @"name", @"label": @"label", @"_description": @"description", @"datasetStructure": @"datasetStructure", @"links": @"_links", @"datasetVariables": @"datasetVariables" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ordinal", @"name", @"label", @"_description", @"datasetStructure", @"links", @"datasetVariables"];
  return [optionalProperties containsObject:propertyName];
}

@end

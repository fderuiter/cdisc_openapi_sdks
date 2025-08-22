#import "OAISendigDatasetVariablesLinks.h"

@implementation OAISendigDatasetVariablesLinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"self": @"self", @"modelDataset": @"modelDataset", @"parentProduct": @"parentProduct", @"parentClass": @"parentClass", @"priorVersion": @"priorVersion", @"datasetVariables": @"datasetVariables" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"self", @"modelDataset", @"parentProduct", @"parentClass", @"priorVersion", @"datasetVariables"];
  return [optionalProperties containsObject:propertyName];
}

@end

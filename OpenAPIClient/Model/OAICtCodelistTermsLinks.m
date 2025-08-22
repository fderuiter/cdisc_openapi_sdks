#import "OAICtCodelistTermsLinks.h"

@implementation OAICtCodelistTermsLinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"self": @"self", @"parentPackage": @"parentPackage", @"rootItem": @"rootItem", @"priorVersion": @"priorVersion", @"terms": @"terms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"self", @"parentPackage", @"rootItem", @"priorVersion", @"terms"];
  return [optionalProperties containsObject:propertyName];
}

@end

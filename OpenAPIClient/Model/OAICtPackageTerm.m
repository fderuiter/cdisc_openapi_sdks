#import "OAICtPackageTerm.h"

@implementation OAICtPackageTerm

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"conceptId": @"conceptId", @"submissionValue": @"submissionValue", @"definition": @"definition", @"preferredTerm": @"preferredTerm", @"synonyms": @"synonyms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"conceptId", @"submissionValue", @"definition", @"preferredTerm", @"synonyms"];
  return [optionalProperties containsObject:propertyName];
}

@end

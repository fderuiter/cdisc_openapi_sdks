#import "OAICtCodelist.h"

@implementation OAICtCodelist

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"conceptId": @"conceptId", @"extensible": @"extensible", @"name": @"name", @"submissionValue": @"submissionValue", @"definition": @"definition", @"preferredTerm": @"preferredTerm", @"synonyms": @"synonyms", @"links": @"_links", @"terms": @"terms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"conceptId", @"extensible", @"name", @"submissionValue", @"definition", @"preferredTerm", @"synonyms", @"links", @"terms"];
  return [optionalProperties containsObject:propertyName];
}

@end

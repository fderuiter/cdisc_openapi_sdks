#import "OAISdtmigClasses.h"

@implementation OAISdtmigClasses

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"label": @"label", @"_description": @"description", @"source": @"source", @"effectiveDate": @"effectiveDate", @"registrationStatus": @"registrationStatus", @"version": @"version", @"links": @"_links" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"label", @"_description", @"source", @"effectiveDate", @"registrationStatus", @"version", @"links"];
  return [optionalProperties containsObject:propertyName];
}

@end

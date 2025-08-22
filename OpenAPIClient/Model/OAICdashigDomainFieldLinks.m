#import "OAICdashigDomainFieldLinks.h"

@implementation OAICdashigDomainFieldLinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"self": @"self", @"codelist": @"codelist", @"parentProduct": @"parentProduct", @"parentDomain": @"parentDomain", @"rootItem": @"rootItem", @"priorVersion": @"priorVersion", @"sdtmClassMappingTargets": @"sdtmClassMappingTargets", @"sdtmigDatasetMappingTargets": @"sdtmigDatasetMappingTargets" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"self", @"codelist", @"parentProduct", @"parentDomain", @"rootItem", @"priorVersion", @"sdtmClassMappingTargets", @"sdtmigDatasetMappingTargets"];
  return [optionalProperties containsObject:propertyName];
}

@end

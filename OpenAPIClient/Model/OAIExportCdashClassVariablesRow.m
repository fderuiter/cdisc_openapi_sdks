#import "OAIExportCdashClassVariablesRow.h"

@implementation OAIExportCdashClassVariablesRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"version": @"Version", @"_class": @"Class", @"domain": @"Domain", @"variableOrder": @"Variable Order", @"cDASHVariable": @"CDASH Variable", @"cDASHVariableLabel": @"CDASH Variable Label", @"dRAFTCDASHDefinition": @"DRAFT CDASH Definition", @"domainSpecific": @"Domain Specific", @"questionText": @"Question Text", @"prompt": @"Prompt", @"type": @"Type", @"sDTMTarget": @"SDTM Target", @"mappingInstructions": @"Mapping Instructions", @"controlledTerminologyCodelistName": @"Controlled Terminology Codelist Name", @"implementationNotes": @"Implementation Notes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"version", @"_class", @"domain", @"variableOrder", @"cDASHVariable", @"cDASHVariableLabel", @"dRAFTCDASHDefinition", @"domainSpecific", @"questionText", @"prompt", @"type", @"sDTMTarget", @"mappingInstructions", @"controlledTerminologyCodelistName", @"implementationNotes"];
  return [optionalProperties containsObject:propertyName];
}

@end

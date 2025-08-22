#import "OAIExportCdashigScenarioVariablesRow.h"

@implementation OAIExportCdashigScenarioVariablesRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"version": @"Version", @"_class": @"Class", @"domain": @"Domain", @"dataCollectionScenario": @"Data Collection Scenario", @"variableOrder": @"Variable Order", @"cDASHIGVariable": @"CDASHIG Variable", @"cDASHIGVariableLabel": @"CDASHIG Variable Label", @"dRAFTCDASHIGDefinition": @"DRAFT CDASHIG Definition", @"questionText": @"Question Text", @"prompt": @"Prompt", @"type": @"Type", @"cDASHIGCore": @"CDASHIG Core", @"caseReportFormCompletionInstructions": @"Case Report Form Completion Instructions", @"sDTMIGTarget": @"SDTMIG Target", @"mappingInstructions": @"Mapping Instructions", @"controlledTerminologyCodelistName": @"Controlled Terminology Codelist Name", @"implementationNotes": @"Implementation Notes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"version", @"_class", @"domain", @"dataCollectionScenario", @"variableOrder", @"cDASHIGVariable", @"cDASHIGVariableLabel", @"dRAFTCDASHIGDefinition", @"questionText", @"prompt", @"type", @"cDASHIGCore", @"caseReportFormCompletionInstructions", @"sDTMIGTarget", @"mappingInstructions", @"controlledTerminologyCodelistName", @"implementationNotes"];
  return [optionalProperties containsObject:propertyName];
}

@end

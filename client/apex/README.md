# CDISC Library API API Client


REST API Documentation for CDISC Library in production server

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi api = new OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi();
OASClient client = api.getClient();


Map<String, Object> params = new Map<String, Object>{
    'product' => adamig-1-1
};

try {
    // cross your fingers
    OASAdamProductDatastructures result = api.mdrAdamProductDatastructuresGet(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://library.cdisc.org/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresGet) | **GET** /mdr/adam/{product}/datastructures | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureGet) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVariablesGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVariablesVarGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVariablesVarGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVarsetsGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductDatastructuresStructureVarsetsVarsetGet) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
*OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductGet**](OASAnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdrAdamProductGet) | **GET** /mdr/adam/{product} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassDomainsGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassDomainsGet) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassGet) | **GET** /mdr/cdashig/{version}/classes/{class} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassScenariosGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesClassScenariosGet) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionClassesGet) | **GET** /mdr/cdashig/{version}/classes | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainFieldsFieldGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainFieldsGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainFieldsGet) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsDomainGet) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionDomainsGet) | **GET** /mdr/cdashig/{version}/domains | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionGet) | **GET** /mdr/cdashig/{version} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioFieldsGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosDomainScenarioGet) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrCdashigVersionScenariosGet) | **GET** /mdr/cdashig/{version}/scenarios | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrRootCdashigDomainsDomainFieldsFieldGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
*OASCDASHImplementationGuideCDASHIGApi* | [**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](OASCDASHImplementationGuideCDASHIGApi.md#mdrRootCdashigScenariosDomainScenarioFieldsFieldGet) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassDomainsGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassDomainsGet) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassFieldsFieldGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassFieldsFieldGet) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesClassGet) | **GET** /mdr/cdash/{version}/classes/{class} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionClassesGet) | **GET** /mdr/cdash/{version}/classes | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainFieldsFieldGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsFieldGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainFieldsGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainFieldsGet) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsDomainGet) | **GET** /mdr/cdash/{version}/domains/{domain} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionDomainsGet) | **GET** /mdr/cdash/{version}/domains | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrCdashVersionGet) | **GET** /mdr/cdash/{version} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrRootCdashClassesClassFieldsFieldGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashClassesClassFieldsFieldGet) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
*OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrRootCdashDomainsDomainFieldsFieldGet**](OASClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrRootCdashDomainsDomainFieldsFieldGet) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesGet) | **GET** /mdr/ct/packages | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistTermsGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsCodelistTermsTermGet) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesPackageCodelistsGet) | **GET** /mdr/ct/packages/{package}/codelists | 
*OASControlledTerminologyCTApi* | [**mdrCtPackagesProductGet**](OASControlledTerminologyCTApi.md#mdrCtPackagesProductGet) | **GET** /mdr/ct/packages/{product} | 
*OASControlledTerminologyCTApi* | [**mdrRootCtProductGroupCodelistsCodelistGet**](OASControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
*OASControlledTerminologyCTApi* | [**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](OASControlledTerminologyCTApi.md#mdrRootCtProductGroupCodelistsCodelistTermsTermGet) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 
*OASDefaultApi* | [**mdrAboutGet**](OASDefaultApi.md#mdrAboutGet) | **GET** /mdr/about | 
*OASDefaultApi* | [**mdrLastupdatedGet**](OASDefaultApi.md#mdrLastupdatedGet) | **GET** /mdr/lastupdated | 
*OASDefaultApi* | [**mdrProductsDataAnalysisGet**](OASDefaultApi.md#mdrProductsDataAnalysisGet) | **GET** /mdr/products/DataAnalysis | 
*OASDefaultApi* | [**mdrProductsDataCollectionGet**](OASDefaultApi.md#mdrProductsDataCollectionGet) | **GET** /mdr/products/DataCollection | 
*OASDefaultApi* | [**mdrProductsDataTabulationGet**](OASDefaultApi.md#mdrProductsDataTabulationGet) | **GET** /mdr/products/DataTabulation | 
*OASDefaultApi* | [**mdrProductsGet**](OASDefaultApi.md#mdrProductsGet) | **GET** /mdr/products | 
*OASDefaultApi* | [**mdrProductsMeasuresGet**](OASDefaultApi.md#mdrProductsMeasuresGet) | **GET** /mdr/products/Measures | 
*OASDefaultApi* | [**mdrProductsTerminologyGet**](OASDefaultApi.md#mdrProductsTerminologyGet) | **GET** /mdr/products/Terminology | 
*OASMeasuresApi* | [**mdrQrsMeasureVersionGet**](OASMeasuresApi.md#mdrQrsMeasureVersionGet) | **GET** /mdr/qrs/{measure}/{version} | 
*OASMeasuresApi* | [**mdrQrsMeasureVersionItemsGet**](OASMeasuresApi.md#mdrQrsMeasureVersionItemsGet) | **GET** /mdr/qrs/{measure}/{version}/items | 
*OASMeasuresApi* | [**mdrQrsMeasureVersionItemsItemGet**](OASMeasuresApi.md#mdrQrsMeasureVersionItemsItemGet) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
*OASMeasuresApi* | [**mdrQrsMeasureVersionResponsegroupsGet**](OASMeasuresApi.md#mdrQrsMeasureVersionResponsegroupsGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
*OASMeasuresApi* | [**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](OASMeasuresApi.md#mdrQrsMeasureVersionResponsegroupsResponsegroupGet) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrRootSdtmigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesClassDatasetsGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassDatasetsGet) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesClassGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesClassGet) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionClassesGet) | **GET** /mdr/sdtmig/{version}/classes | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetVariablesGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionDatasetsGet) | **GET** /mdr/sdtmig/{version}/datasets | 
*OASSDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionGet**](OASSDTMImplementationGuideSDTMIGApi.md#mdrSdtmigVersionGet) | **GET** /mdr/sdtmig/{version} | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrRootSendigDatasetsDatasetVariablesVarGet**](OASSENDImplementationGuideSENDIGApi.md#mdrRootSendigDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesClassDatasetsGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassDatasetsGet) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesClassGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesClassGet) | **GET** /mdr/sendig/{version}/classes/{class} | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionClassesGet) | **GET** /mdr/sendig/{version}/classes | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetGet) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetVariablesGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetVariablesVarGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionDatasetsGet) | **GET** /mdr/sendig/{version}/datasets | 
*OASSENDImplementationGuideSENDIGApi* | [**mdrSendigVersionGet**](OASSENDImplementationGuideSENDIGApi.md#mdrSendigVersionGet) | **GET** /mdr/sendig/{version} | 
*OASSearchesApi* | [**mdrSearchGet**](OASSearchesApi.md#mdrSearchGet) | **GET** /mdr/search | 
*OASSearchesApi* | [**mdrSearchScopesGet**](OASSearchesApi.md#mdrSearchScopesGet) | **GET** /mdr/search/scopes | 
*OASSearchesApi* | [**mdrSearchScopesScopeGet**](OASSearchesApi.md#mdrSearchScopesScopeGet) | **GET** /mdr/search/scopes/{scope} | 
*OASStatusesApi* | [**healthGet**](OASStatusesApi.md#healthGet) | **GET** /health | 
*OASStatusesApi* | [**mdrMaintenanceGet**](OASStatusesApi.md#mdrMaintenanceGet) | **GET** /mdr/maintenance | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrRootSdtmClassesClassVariablesVarGet**](OASStudyDataTabulationModelSDTMApi.md#mdrRootSdtmClassesClassVariablesVarGet) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrRootSdtmDatasetsDatasetVariablesVarGet**](OASStudyDataTabulationModelSDTMApi.md#mdrRootSdtmDatasetsDatasetVariablesVarGet) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassDatasetsGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassDatasetsGet) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassGet) | **GET** /mdr/sdtm/{version}/classes/{class} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassVariablesGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassVariablesVarGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesClassVariablesVarGet) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionClassesGet) | **GET** /mdr/sdtm/{version}/classes | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetVariablesGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsDatasetVariablesVarGet) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionDatasetsGet) | **GET** /mdr/sdtm/{version}/datasets | 
*OASStudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionGet**](OASStudyDataTabulationModelSDTMApi.md#mdrSdtmVersionGet) | **GET** /mdr/sdtm/{version} | 


## Documentation for Models

 - [OASAbout](OASAbout.md)
 - [OASAboutLinks](OASAboutLinks.md)
 - [OASAboutRef](OASAboutRef.md)
 - [OASAdamDatastructure](OASAdamDatastructure.md)
 - [OASAdamDatastructureLinks](OASAdamDatastructureLinks.md)
 - [OASAdamDatastructureRef](OASAdamDatastructureRef.md)
 - [OASAdamDatastructureRefElement](OASAdamDatastructureRefElement.md)
 - [OASAdamDatastructureVariables](OASAdamDatastructureVariables.md)
 - [OASAdamDatastructureVariablesLinks](OASAdamDatastructureVariablesLinks.md)
 - [OASAdamDatastructureVariablesRef](OASAdamDatastructureVariablesRef.md)
 - [OASAdamDatastructureVarsets](OASAdamDatastructureVarsets.md)
 - [OASAdamDatastructureVarsetsLinks](OASAdamDatastructureVarsetsLinks.md)
 - [OASAdamDatastructureVarsetsRef](OASAdamDatastructureVarsetsRef.md)
 - [OASAdamProduct](OASAdamProduct.md)
 - [OASAdamProductDatastructures](OASAdamProductDatastructures.md)
 - [OASAdamProductDatastructuresLinks](OASAdamProductDatastructuresLinks.md)
 - [OASAdamProductDatastructuresRef](OASAdamProductDatastructuresRef.md)
 - [OASAdamProductLinks](OASAdamProductLinks.md)
 - [OASAdamProductRef](OASAdamProductRef.md)
 - [OASAdamProductRefElement](OASAdamProductRefElement.md)
 - [OASAdamVariable](OASAdamVariable.md)
 - [OASAdamVariableLinks](OASAdamVariableLinks.md)
 - [OASAdamVariableRef](OASAdamVariableRef.md)
 - [OASAdamVariableRefElement](OASAdamVariableRefElement.md)
 - [OASAdamVarset](OASAdamVarset.md)
 - [OASAdamVarsetLinks](OASAdamVarsetLinks.md)
 - [OASAdamVarsetRef](OASAdamVarsetRef.md)
 - [OASAdamVarsetRefElement](OASAdamVarsetRefElement.md)
 - [OASCdashClass](OASCdashClass.md)
 - [OASCdashClassDomains](OASCdashClassDomains.md)
 - [OASCdashClassDomainsLinks](OASCdashClassDomainsLinks.md)
 - [OASCdashClassDomainsRef](OASCdashClassDomainsRef.md)
 - [OASCdashClassField](OASCdashClassField.md)
 - [OASCdashClassFieldLinks](OASCdashClassFieldLinks.md)
 - [OASCdashClassFieldRef](OASCdashClassFieldRef.md)
 - [OASCdashClassFieldRefVersion](OASCdashClassFieldRefVersion.md)
 - [OASCdashClassLinks](OASCdashClassLinks.md)
 - [OASCdashClassRef](OASCdashClassRef.md)
 - [OASCdashClassRefElement](OASCdashClassRefElement.md)
 - [OASCdashDomain](OASCdashDomain.md)
 - [OASCdashDomainField](OASCdashDomainField.md)
 - [OASCdashDomainFieldLinks](OASCdashDomainFieldLinks.md)
 - [OASCdashDomainFieldRef](OASCdashDomainFieldRef.md)
 - [OASCdashDomainFieldRefElement](OASCdashDomainFieldRefElement.md)
 - [OASCdashDomainFieldRefVersion](OASCdashDomainFieldRefVersion.md)
 - [OASCdashDomainFields](OASCdashDomainFields.md)
 - [OASCdashDomainFieldsLinks](OASCdashDomainFieldsLinks.md)
 - [OASCdashDomainFieldsRef](OASCdashDomainFieldsRef.md)
 - [OASCdashDomainLinks](OASCdashDomainLinks.md)
 - [OASCdashDomainRef](OASCdashDomainRef.md)
 - [OASCdashDomainRefElement](OASCdashDomainRefElement.md)
 - [OASCdashProduct](OASCdashProduct.md)
 - [OASCdashProductClasses](OASCdashProductClasses.md)
 - [OASCdashProductClassesLinks](OASCdashProductClassesLinks.md)
 - [OASCdashProductClassesRef](OASCdashProductClassesRef.md)
 - [OASCdashProductDomains](OASCdashProductDomains.md)
 - [OASCdashProductDomainsLinks](OASCdashProductDomainsLinks.md)
 - [OASCdashProductDomainsRef](OASCdashProductDomainsRef.md)
 - [OASCdashProductLinks](OASCdashProductLinks.md)
 - [OASCdashProductRef](OASCdashProductRef.md)
 - [OASCdashProductRefElement](OASCdashProductRefElement.md)
 - [OASCdashigClass](OASCdashigClass.md)
 - [OASCdashigClassDomains](OASCdashigClassDomains.md)
 - [OASCdashigClassDomainsLinks](OASCdashigClassDomainsLinks.md)
 - [OASCdashigClassDomainsRef](OASCdashigClassDomainsRef.md)
 - [OASCdashigClassLinks](OASCdashigClassLinks.md)
 - [OASCdashigClassRef](OASCdashigClassRef.md)
 - [OASCdashigClassRefElement](OASCdashigClassRefElement.md)
 - [OASCdashigClassRefSubclass](OASCdashigClassRefSubclass.md)
 - [OASCdashigClassScenarios](OASCdashigClassScenarios.md)
 - [OASCdashigClassScenariosLinks](OASCdashigClassScenariosLinks.md)
 - [OASCdashigClassScenariosRef](OASCdashigClassScenariosRef.md)
 - [OASCdashigDomain](OASCdashigDomain.md)
 - [OASCdashigDomainField](OASCdashigDomainField.md)
 - [OASCdashigDomainFieldLinks](OASCdashigDomainFieldLinks.md)
 - [OASCdashigDomainFieldRef](OASCdashigDomainFieldRef.md)
 - [OASCdashigDomainFieldRefElement](OASCdashigDomainFieldRefElement.md)
 - [OASCdashigDomainFieldRefVersion](OASCdashigDomainFieldRefVersion.md)
 - [OASCdashigDomainFields](OASCdashigDomainFields.md)
 - [OASCdashigDomainFieldsLinks](OASCdashigDomainFieldsLinks.md)
 - [OASCdashigDomainFieldsRef](OASCdashigDomainFieldsRef.md)
 - [OASCdashigDomainLinks](OASCdashigDomainLinks.md)
 - [OASCdashigDomainRef](OASCdashigDomainRef.md)
 - [OASCdashigDomainRefElement](OASCdashigDomainRefElement.md)
 - [OASCdashigProduct](OASCdashigProduct.md)
 - [OASCdashigProductClasses](OASCdashigProductClasses.md)
 - [OASCdashigProductClassesLinks](OASCdashigProductClassesLinks.md)
 - [OASCdashigProductClassesRef](OASCdashigProductClassesRef.md)
 - [OASCdashigProductDomains](OASCdashigProductDomains.md)
 - [OASCdashigProductDomainsLinks](OASCdashigProductDomainsLinks.md)
 - [OASCdashigProductDomainsRef](OASCdashigProductDomainsRef.md)
 - [OASCdashigProductLinks](OASCdashigProductLinks.md)
 - [OASCdashigProductRef](OASCdashigProductRef.md)
 - [OASCdashigProductRefElement](OASCdashigProductRefElement.md)
 - [OASCdashigProductScenarios](OASCdashigProductScenarios.md)
 - [OASCdashigProductScenariosLinks](OASCdashigProductScenariosLinks.md)
 - [OASCdashigProductScenariosRef](OASCdashigProductScenariosRef.md)
 - [OASCdashigScenario](OASCdashigScenario.md)
 - [OASCdashigScenarioField](OASCdashigScenarioField.md)
 - [OASCdashigScenarioFieldLinks](OASCdashigScenarioFieldLinks.md)
 - [OASCdashigScenarioFieldRef](OASCdashigScenarioFieldRef.md)
 - [OASCdashigScenarioFieldRefElement](OASCdashigScenarioFieldRefElement.md)
 - [OASCdashigScenarioFieldRefVersion](OASCdashigScenarioFieldRefVersion.md)
 - [OASCdashigScenarioFields](OASCdashigScenarioFields.md)
 - [OASCdashigScenarioFieldsLinks](OASCdashigScenarioFieldsLinks.md)
 - [OASCdashigScenarioFieldsRef](OASCdashigScenarioFieldsRef.md)
 - [OASCdashigScenarioLinks](OASCdashigScenarioLinks.md)
 - [OASCdashigScenarioRef](OASCdashigScenarioRef.md)
 - [OASCdashigScenarioRefElement](OASCdashigScenarioRefElement.md)
 - [OASCtCodelist](OASCtCodelist.md)
 - [OASCtCodelistLinks](OASCtCodelistLinks.md)
 - [OASCtCodelistRef](OASCtCodelistRef.md)
 - [OASCtCodelistRefElement](OASCtCodelistRefElement.md)
 - [OASCtCodelistRefVersion](OASCtCodelistRefVersion.md)
 - [OASCtCodelistTerms](OASCtCodelistTerms.md)
 - [OASCtCodelistTermsLinks](OASCtCodelistTermsLinks.md)
 - [OASCtCodelistTermsRef](OASCtCodelistTermsRef.md)
 - [OASCtPackage](OASCtPackage.md)
 - [OASCtPackageCodelists](OASCtPackageCodelists.md)
 - [OASCtPackageCodelistsLinks](OASCtPackageCodelistsLinks.md)
 - [OASCtPackageCodelistsRef](OASCtPackageCodelistsRef.md)
 - [OASCtPackageLinks](OASCtPackageLinks.md)
 - [OASCtPackageRef](OASCtPackageRef.md)
 - [OASCtPackageRefElement](OASCtPackageRefElement.md)
 - [OASCtPackageTerm](OASCtPackageTerm.md)
 - [OASCtPackages](OASCtPackages.md)
 - [OASCtPackagesLinks](OASCtPackagesLinks.md)
 - [OASCtPackagesRef](OASCtPackagesRef.md)
 - [OASCtTerm](OASCtTerm.md)
 - [OASCtTermLinks](OASCtTermLinks.md)
 - [OASCtTermRef](OASCtTermRef.md)
 - [OASCtTermRefElement](OASCtTermRefElement.md)
 - [OASCtTermRefVersion](OASCtTermRefVersion.md)
 - [OASDefaultErrorResponse](OASDefaultErrorResponse.md)
 - [OASDefaultSearchResponse](OASDefaultSearchResponse.md)
 - [OASDefaultSearchResponseHitsInner](OASDefaultSearchResponseHitsInner.md)
 - [OASDefaultSearchScopes](OASDefaultSearchScopes.md)
 - [OASExportAdamDatastructuresRow](OASExportAdamDatastructuresRow.md)
 - [OASExportAdamDatastructuresTable](OASExportAdamDatastructuresTable.md)
 - [OASExportAdamVariablesRow](OASExportAdamVariablesRow.md)
 - [OASExportAdamVariablesTable](OASExportAdamVariablesTable.md)
 - [OASExportAdamWorkbook](OASExportAdamWorkbook.md)
 - [OASExportCdashClassVariablesRow](OASExportCdashClassVariablesRow.md)
 - [OASExportCdashDomainVariablesRow](OASExportCdashDomainVariablesRow.md)
 - [OASExportCdashTable](OASExportCdashTable.md)
 - [OASExportCdashigDomainVariablesRow](OASExportCdashigDomainVariablesRow.md)
 - [OASExportCdashigScenarioVariablesRow](OASExportCdashigScenarioVariablesRow.md)
 - [OASExportCdashigTable](OASExportCdashigTable.md)
 - [OASExportCtCodelist](OASExportCtCodelist.md)
 - [OASExportCtTable](OASExportCtTable.md)
 - [OASExportCtTerm](OASExportCtTerm.md)
 - [OASExportQrsCsvItemsRow](OASExportQrsCsvItemsRow.md)
 - [OASExportQrsGeneral](OASExportQrsGeneral.md)
 - [OASExportQrsItemsTable](OASExportQrsItemsTable.md)
 - [OASExportQrsResponses](OASExportQrsResponses.md)
 - [OASExportQrsWorkbook](OASExportQrsWorkbook.md)
 - [OASExportQrsWorkbookItemsRow](OASExportQrsWorkbookItemsRow.md)
 - [OASExportSdtmClassVariablesRow](OASExportSdtmClassVariablesRow.md)
 - [OASExportSdtmDatasetVariablesRow](OASExportSdtmDatasetVariablesRow.md)
 - [OASExportSdtmDatasetsRow](OASExportSdtmDatasetsRow.md)
 - [OASExportSdtmDatasetsTable](OASExportSdtmDatasetsTable.md)
 - [OASExportSdtmVariablesTable](OASExportSdtmVariablesTable.md)
 - [OASExportSdtmWorkbook](OASExportSdtmWorkbook.md)
 - [OASExportSdtmigDatasetsRow](OASExportSdtmigDatasetsRow.md)
 - [OASExportSdtmigDatasetsTable](OASExportSdtmigDatasetsTable.md)
 - [OASExportSdtmigVariablesRow](OASExportSdtmigVariablesRow.md)
 - [OASExportSdtmigVariablesTable](OASExportSdtmigVariablesTable.md)
 - [OASExportSdtmigWorkbook](OASExportSdtmigWorkbook.md)
 - [OASExportSendigDatasetsRow](OASExportSendigDatasetsRow.md)
 - [OASExportSendigDatasetsTable](OASExportSendigDatasetsTable.md)
 - [OASExportSendigVariablesRow](OASExportSendigVariablesRow.md)
 - [OASExportSendigVariablesTable](OASExportSendigVariablesTable.md)
 - [OASExportSendigWorkbook](OASExportSendigWorkbook.md)
 - [OASHealth](OASHealth.md)
 - [OASLastupdated](OASLastupdated.md)
 - [OASLastupdatedLinks](OASLastupdatedLinks.md)
 - [OASLastupdatedRef](OASLastupdatedRef.md)
 - [OASMaintenanceBody](OASMaintenanceBody.md)
 - [OASMdrSearchScopesGet200Response](OASMdrSearchScopesGet200Response.md)
 - [OASProductgroupDataAnalysis](OASProductgroupDataAnalysis.md)
 - [OASProductgroupDataAnalysisLinks](OASProductgroupDataAnalysisLinks.md)
 - [OASProductgroupDataCollection](OASProductgroupDataCollection.md)
 - [OASProductgroupDataCollectionLinks](OASProductgroupDataCollectionLinks.md)
 - [OASProductgroupDataTabulation](OASProductgroupDataTabulation.md)
 - [OASProductgroupDataTabulationLinks](OASProductgroupDataTabulationLinks.md)
 - [OASProductgroupQrs](OASProductgroupQrs.md)
 - [OASProductgroupQrsLinks](OASProductgroupQrsLinks.md)
 - [OASProductgroupRef](OASProductgroupRef.md)
 - [OASProductgroupTerminology](OASProductgroupTerminology.md)
 - [OASProductgroupTerminologyLinks](OASProductgroupTerminologyLinks.md)
 - [OASProducts](OASProducts.md)
 - [OASProductsLinks](OASProductsLinks.md)
 - [OASProductsRef](OASProductsRef.md)
 - [OASQrsItem](OASQrsItem.md)
 - [OASQrsItemLinks](OASQrsItemLinks.md)
 - [OASQrsItemRefElement](OASQrsItemRefElement.md)
 - [OASQrsItems](OASQrsItems.md)
 - [OASQrsItemsLinks](OASQrsItemsLinks.md)
 - [OASQrsItemsRef](OASQrsItemsRef.md)
 - [OASQrsProduct](OASQrsProduct.md)
 - [OASQrsProductLinks](OASQrsProductLinks.md)
 - [OASQrsProductRef](OASQrsProductRef.md)
 - [OASQrsRefElement](OASQrsRefElement.md)
 - [OASQrsResponseLinks](OASQrsResponseLinks.md)
 - [OASQrsResponsegroup](OASQrsResponsegroup.md)
 - [OASQrsResponsegroupLinks](OASQrsResponsegroupLinks.md)
 - [OASQrsResponsegroupRef](OASQrsResponsegroupRef.md)
 - [OASQrsResponsegroupRefElement](OASQrsResponsegroupRefElement.md)
 - [OASQrsResponsegroups](OASQrsResponsegroups.md)
 - [OASQrsResponsegroupsLinks](OASQrsResponsegroupsLinks.md)
 - [OASQrsResponsegroupsRef](OASQrsResponsegroupsRef.md)
 - [OASQrsResponses](OASQrsResponses.md)
 - [OASRootCdashClassField](OASRootCdashClassField.md)
 - [OASRootCdashClassFieldLinks](OASRootCdashClassFieldLinks.md)
 - [OASRootCdashClassFieldRef](OASRootCdashClassFieldRef.md)
 - [OASRootCdashDomainField](OASRootCdashDomainField.md)
 - [OASRootCdashDomainFieldLinks](OASRootCdashDomainFieldLinks.md)
 - [OASRootCdashDomainFieldRef](OASRootCdashDomainFieldRef.md)
 - [OASRootCdashigDomainField](OASRootCdashigDomainField.md)
 - [OASRootCdashigDomainFieldLinks](OASRootCdashigDomainFieldLinks.md)
 - [OASRootCdashigDomainFieldRef](OASRootCdashigDomainFieldRef.md)
 - [OASRootCdashigScenarioField](OASRootCdashigScenarioField.md)
 - [OASRootCdashigScenarioFieldLinks](OASRootCdashigScenarioFieldLinks.md)
 - [OASRootCdashigScenarioFieldRef](OASRootCdashigScenarioFieldRef.md)
 - [OASRootCtCodelist](OASRootCtCodelist.md)
 - [OASRootCtCodelistLinks](OASRootCtCodelistLinks.md)
 - [OASRootCtCodelistRef](OASRootCtCodelistRef.md)
 - [OASRootCtCodelistRefElement](OASRootCtCodelistRefElement.md)
 - [OASRootCtTerm](OASRootCtTerm.md)
 - [OASRootCtTermLinks](OASRootCtTermLinks.md)
 - [OASRootCtTermRef](OASRootCtTermRef.md)
 - [OASRootSdtmClassVariable](OASRootSdtmClassVariable.md)
 - [OASRootSdtmClassVariableLinks](OASRootSdtmClassVariableLinks.md)
 - [OASRootSdtmClassVariableRef](OASRootSdtmClassVariableRef.md)
 - [OASRootSdtmDatasetVariable](OASRootSdtmDatasetVariable.md)
 - [OASRootSdtmDatasetVariableLinks](OASRootSdtmDatasetVariableLinks.md)
 - [OASRootSdtmDatasetVariableRef](OASRootSdtmDatasetVariableRef.md)
 - [OASRootSdtmigDatasetVariable](OASRootSdtmigDatasetVariable.md)
 - [OASRootSdtmigDatasetVariableLinks](OASRootSdtmigDatasetVariableLinks.md)
 - [OASRootSdtmigDatasetVariableRef](OASRootSdtmigDatasetVariableRef.md)
 - [OASRootSendigDatasetVariable](OASRootSendigDatasetVariable.md)
 - [OASRootSendigDatasetVariableLinks](OASRootSendigDatasetVariableLinks.md)
 - [OASRootSendigDatasetVariableRef](OASRootSendigDatasetVariableRef.md)
 - [OASScopeValues](OASScopeValues.md)
 - [OASSdtmClass](OASSdtmClass.md)
 - [OASSdtmClassDatasets](OASSdtmClassDatasets.md)
 - [OASSdtmClassDatasetsLinks](OASSdtmClassDatasetsLinks.md)
 - [OASSdtmClassDatasetsRef](OASSdtmClassDatasetsRef.md)
 - [OASSdtmClassLinks](OASSdtmClassLinks.md)
 - [OASSdtmClassRef](OASSdtmClassRef.md)
 - [OASSdtmClassRefElement](OASSdtmClassRefElement.md)
 - [OASSdtmClassRefSubclass](OASSdtmClassRefSubclass.md)
 - [OASSdtmClassVariable](OASSdtmClassVariable.md)
 - [OASSdtmClassVariableLinks](OASSdtmClassVariableLinks.md)
 - [OASSdtmClassVariableRef](OASSdtmClassVariableRef.md)
 - [OASSdtmClassVariableRefElement](OASSdtmClassVariableRefElement.md)
 - [OASSdtmClassVariableRefQualifies](OASSdtmClassVariableRefQualifies.md)
 - [OASSdtmClassVariableRefTarget](OASSdtmClassVariableRefTarget.md)
 - [OASSdtmClassVariableRefVersion](OASSdtmClassVariableRefVersion.md)
 - [OASSdtmClassVariables](OASSdtmClassVariables.md)
 - [OASSdtmClassVariablesLinks](OASSdtmClassVariablesLinks.md)
 - [OASSdtmClassVariablesRef](OASSdtmClassVariablesRef.md)
 - [OASSdtmClasses](OASSdtmClasses.md)
 - [OASSdtmClassesLinks](OASSdtmClassesLinks.md)
 - [OASSdtmClassesRef](OASSdtmClassesRef.md)
 - [OASSdtmDataset](OASSdtmDataset.md)
 - [OASSdtmDatasetLinks](OASSdtmDatasetLinks.md)
 - [OASSdtmDatasetRef](OASSdtmDatasetRef.md)
 - [OASSdtmDatasetRefElement](OASSdtmDatasetRefElement.md)
 - [OASSdtmDatasetVariable](OASSdtmDatasetVariable.md)
 - [OASSdtmDatasetVariableLinks](OASSdtmDatasetVariableLinks.md)
 - [OASSdtmDatasetVariableRef](OASSdtmDatasetVariableRef.md)
 - [OASSdtmDatasetVariableRefElement](OASSdtmDatasetVariableRefElement.md)
 - [OASSdtmDatasetVariableRefTarget](OASSdtmDatasetVariableRefTarget.md)
 - [OASSdtmDatasetVariableRefVersion](OASSdtmDatasetVariableRefVersion.md)
 - [OASSdtmDatasetVariables](OASSdtmDatasetVariables.md)
 - [OASSdtmDatasetVariablesLinks](OASSdtmDatasetVariablesLinks.md)
 - [OASSdtmDatasetVariablesRef](OASSdtmDatasetVariablesRef.md)
 - [OASSdtmDatasets](OASSdtmDatasets.md)
 - [OASSdtmDatasetsLinks](OASSdtmDatasetsLinks.md)
 - [OASSdtmDatasetsRef](OASSdtmDatasetsRef.md)
 - [OASSdtmProduct](OASSdtmProduct.md)
 - [OASSdtmProductLinks](OASSdtmProductLinks.md)
 - [OASSdtmProductRef](OASSdtmProductRef.md)
 - [OASSdtmProductRefElement](OASSdtmProductRefElement.md)
 - [OASSdtmigClass](OASSdtmigClass.md)
 - [OASSdtmigClassDatasets](OASSdtmigClassDatasets.md)
 - [OASSdtmigClassDatasetsLinks](OASSdtmigClassDatasetsLinks.md)
 - [OASSdtmigClassDatasetsRef](OASSdtmigClassDatasetsRef.md)
 - [OASSdtmigClassLinks](OASSdtmigClassLinks.md)
 - [OASSdtmigClassRef](OASSdtmigClassRef.md)
 - [OASSdtmigClassRefElement](OASSdtmigClassRefElement.md)
 - [OASSdtmigClassRefSubclass](OASSdtmigClassRefSubclass.md)
 - [OASSdtmigClasses](OASSdtmigClasses.md)
 - [OASSdtmigClassesLinks](OASSdtmigClassesLinks.md)
 - [OASSdtmigClassesRef](OASSdtmigClassesRef.md)
 - [OASSdtmigDataset](OASSdtmigDataset.md)
 - [OASSdtmigDatasetLinks](OASSdtmigDatasetLinks.md)
 - [OASSdtmigDatasetRef](OASSdtmigDatasetRef.md)
 - [OASSdtmigDatasetRefElement](OASSdtmigDatasetRefElement.md)
 - [OASSdtmigDatasetVariable](OASSdtmigDatasetVariable.md)
 - [OASSdtmigDatasetVariableLinks](OASSdtmigDatasetVariableLinks.md)
 - [OASSdtmigDatasetVariableRef](OASSdtmigDatasetVariableRef.md)
 - [OASSdtmigDatasetVariableRefElement](OASSdtmigDatasetVariableRefElement.md)
 - [OASSdtmigDatasetVariableRefTarget](OASSdtmigDatasetVariableRefTarget.md)
 - [OASSdtmigDatasetVariableRefVersion](OASSdtmigDatasetVariableRefVersion.md)
 - [OASSdtmigDatasetVariables](OASSdtmigDatasetVariables.md)
 - [OASSdtmigDatasetVariablesLinks](OASSdtmigDatasetVariablesLinks.md)
 - [OASSdtmigDatasetVariablesRef](OASSdtmigDatasetVariablesRef.md)
 - [OASSdtmigDatasets](OASSdtmigDatasets.md)
 - [OASSdtmigDatasetsLinks](OASSdtmigDatasetsLinks.md)
 - [OASSdtmigDatasetsRef](OASSdtmigDatasetsRef.md)
 - [OASSdtmigProduct](OASSdtmigProduct.md)
 - [OASSdtmigProductLinks](OASSdtmigProductLinks.md)
 - [OASSdtmigProductRef](OASSdtmigProductRef.md)
 - [OASSdtmigProductRefElement](OASSdtmigProductRefElement.md)
 - [OASSendigClass](OASSendigClass.md)
 - [OASSendigClassDatasets](OASSendigClassDatasets.md)
 - [OASSendigClassDatasetsLinks](OASSendigClassDatasetsLinks.md)
 - [OASSendigClassDatasetsRef](OASSendigClassDatasetsRef.md)
 - [OASSendigClassLinks](OASSendigClassLinks.md)
 - [OASSendigClassRef](OASSendigClassRef.md)
 - [OASSendigClassRefElement](OASSendigClassRefElement.md)
 - [OASSendigClassRefSubclass](OASSendigClassRefSubclass.md)
 - [OASSendigClasses](OASSendigClasses.md)
 - [OASSendigClassesLinks](OASSendigClassesLinks.md)
 - [OASSendigClassesRef](OASSendigClassesRef.md)
 - [OASSendigDataset](OASSendigDataset.md)
 - [OASSendigDatasetLinks](OASSendigDatasetLinks.md)
 - [OASSendigDatasetRef](OASSendigDatasetRef.md)
 - [OASSendigDatasetRefElement](OASSendigDatasetRefElement.md)
 - [OASSendigDatasetVariable](OASSendigDatasetVariable.md)
 - [OASSendigDatasetVariableLinks](OASSendigDatasetVariableLinks.md)
 - [OASSendigDatasetVariableRef](OASSendigDatasetVariableRef.md)
 - [OASSendigDatasetVariableRefElement](OASSendigDatasetVariableRefElement.md)
 - [OASSendigDatasetVariableRefVersion](OASSendigDatasetVariableRefVersion.md)
 - [OASSendigDatasetVariables](OASSendigDatasetVariables.md)
 - [OASSendigDatasetVariablesLinks](OASSendigDatasetVariablesLinks.md)
 - [OASSendigDatasetVariablesRef](OASSendigDatasetVariablesRef.md)
 - [OASSendigDatasets](OASSendigDatasets.md)
 - [OASSendigDatasetsLinks](OASSendigDatasetsLinks.md)
 - [OASSendigDatasetsRef](OASSendigDatasetsRef.md)
 - [OASSendigProduct](OASSendigProduct.md)
 - [OASSendigProductLinks](OASSendigProductLinks.md)
 - [OASSendigProductRef](OASSendigProductRef.md)
 - [OASSendigProductRefElement](OASSendigProductRefElement.md)
 - [OASXmlAbout](OASXmlAbout.md)
 - [OASXmlAdamDatastructure](OASXmlAdamDatastructure.md)
 - [OASXmlAdamDatastructureVariables](OASXmlAdamDatastructureVariables.md)
 - [OASXmlAdamDatastructureVarsets](OASXmlAdamDatastructureVarsets.md)
 - [OASXmlAdamProduct](OASXmlAdamProduct.md)
 - [OASXmlAdamProductDatastructures](OASXmlAdamProductDatastructures.md)
 - [OASXmlAdamVariable](OASXmlAdamVariable.md)
 - [OASXmlAdamVarset](OASXmlAdamVarset.md)
 - [OASXmlCdashClass](OASXmlCdashClass.md)
 - [OASXmlCdashClassDomains](OASXmlCdashClassDomains.md)
 - [OASXmlCdashClassField](OASXmlCdashClassField.md)
 - [OASXmlCdashDomain](OASXmlCdashDomain.md)
 - [OASXmlCdashDomainField](OASXmlCdashDomainField.md)
 - [OASXmlCdashDomainFields](OASXmlCdashDomainFields.md)
 - [OASXmlCdashProduct](OASXmlCdashProduct.md)
 - [OASXmlCdashProductClasses](OASXmlCdashProductClasses.md)
 - [OASXmlCdashProductDomains](OASXmlCdashProductDomains.md)
 - [OASXmlCdashigClass](OASXmlCdashigClass.md)
 - [OASXmlCdashigClassDomains](OASXmlCdashigClassDomains.md)
 - [OASXmlCdashigClassScenarios](OASXmlCdashigClassScenarios.md)
 - [OASXmlCdashigDomain](OASXmlCdashigDomain.md)
 - [OASXmlCdashigDomainField](OASXmlCdashigDomainField.md)
 - [OASXmlCdashigDomainFields](OASXmlCdashigDomainFields.md)
 - [OASXmlCdashigProduct](OASXmlCdashigProduct.md)
 - [OASXmlCdashigProductClasses](OASXmlCdashigProductClasses.md)
 - [OASXmlCdashigProductDomains](OASXmlCdashigProductDomains.md)
 - [OASXmlCdashigProductScenarios](OASXmlCdashigProductScenarios.md)
 - [OASXmlCdashigScenario](OASXmlCdashigScenario.md)
 - [OASXmlCdashigScenarioField](OASXmlCdashigScenarioField.md)
 - [OASXmlCdashigScenarioFields](OASXmlCdashigScenarioFields.md)
 - [OASXmlCtCodelist](OASXmlCtCodelist.md)
 - [OASXmlCtCodelistTerms](OASXmlCtCodelistTerms.md)
 - [OASXmlCtPackage](OASXmlCtPackage.md)
 - [OASXmlCtPackageCodelists](OASXmlCtPackageCodelists.md)
 - [OASXmlCtPackages](OASXmlCtPackages.md)
 - [OASXmlCtTerm](OASXmlCtTerm.md)
 - [OASXmlLastupdated](OASXmlLastupdated.md)
 - [OASXmlProductgroupDataAnalysis](OASXmlProductgroupDataAnalysis.md)
 - [OASXmlProductgroupDataCollection](OASXmlProductgroupDataCollection.md)
 - [OASXmlProductgroupDataTabulation](OASXmlProductgroupDataTabulation.md)
 - [OASXmlProductgroupTerminology](OASXmlProductgroupTerminology.md)
 - [OASXmlProducts](OASXmlProducts.md)
 - [OASXmlQrsItem](OASXmlQrsItem.md)
 - [OASXmlQrsItems](OASXmlQrsItems.md)
 - [OASXmlQrsProduct](OASXmlQrsProduct.md)
 - [OASXmlQrsResponsegroup](OASXmlQrsResponsegroup.md)
 - [OASXmlQrsResponsegroups](OASXmlQrsResponsegroups.md)
 - [OASXmlRootCdashClassField](OASXmlRootCdashClassField.md)
 - [OASXmlRootCdashDomainField](OASXmlRootCdashDomainField.md)
 - [OASXmlRootCdashigDomainField](OASXmlRootCdashigDomainField.md)
 - [OASXmlRootCdashigScenarioField](OASXmlRootCdashigScenarioField.md)
 - [OASXmlRootCtCodelist](OASXmlRootCtCodelist.md)
 - [OASXmlRootCtTerm](OASXmlRootCtTerm.md)
 - [OASXmlRootSdtmClassVariable](OASXmlRootSdtmClassVariable.md)
 - [OASXmlRootSdtmDatasetVariable](OASXmlRootSdtmDatasetVariable.md)
 - [OASXmlRootSdtmigDatasetVariable](OASXmlRootSdtmigDatasetVariable.md)
 - [OASXmlRootSendigDatasetVariable](OASXmlRootSendigDatasetVariable.md)
 - [OASXmlSdtmClass](OASXmlSdtmClass.md)
 - [OASXmlSdtmClassDatasets](OASXmlSdtmClassDatasets.md)
 - [OASXmlSdtmClassVariable](OASXmlSdtmClassVariable.md)
 - [OASXmlSdtmClassVariables](OASXmlSdtmClassVariables.md)
 - [OASXmlSdtmClasses](OASXmlSdtmClasses.md)
 - [OASXmlSdtmDataset](OASXmlSdtmDataset.md)
 - [OASXmlSdtmDatasetVariable](OASXmlSdtmDatasetVariable.md)
 - [OASXmlSdtmDatasetVariables](OASXmlSdtmDatasetVariables.md)
 - [OASXmlSdtmDatasets](OASXmlSdtmDatasets.md)
 - [OASXmlSdtmProduct](OASXmlSdtmProduct.md)
 - [OASXmlSdtmigClass](OASXmlSdtmigClass.md)
 - [OASXmlSdtmigClassDatasets](OASXmlSdtmigClassDatasets.md)
 - [OASXmlSdtmigClasses](OASXmlSdtmigClasses.md)
 - [OASXmlSdtmigDataset](OASXmlSdtmigDataset.md)
 - [OASXmlSdtmigDatasetVariable](OASXmlSdtmigDatasetVariable.md)
 - [OASXmlSdtmigDatasetVariables](OASXmlSdtmigDatasetVariables.md)
 - [OASXmlSdtmigDatasets](OASXmlSdtmigDatasets.md)
 - [OASXmlSdtmigProduct](OASXmlSdtmigProduct.md)
 - [OASXmlSendigClass](OASXmlSendigClass.md)
 - [OASXmlSendigClassDatasets](OASXmlSendigClassDatasets.md)
 - [OASXmlSendigClasses](OASXmlSendigClasses.md)
 - [OASXmlSendigDataset](OASXmlSendigDataset.md)
 - [OASXmlSendigDatasetVariable](OASXmlSendigDatasetVariable.md)
 - [OASXmlSendigDatasetVariables](OASXmlSendigDatasetVariables.md)
 - [OASXmlSendigDatasets](OASXmlSendigDatasets.md)
 - [OASXmlSendigProduct](OASXmlSendigProduct.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### basicAuth

- **Type**: HTTP basic authentication


## Author

cdisc_library_support@cdisc.org


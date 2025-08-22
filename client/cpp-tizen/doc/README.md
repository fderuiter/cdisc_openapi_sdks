# Documentation for CDISC Library API 1.1.0 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in CDISC Library API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://library.cdisc.orghttps://library.cdisc.org/api


### AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrAdamProductDatastructuresGetSync* | *GET* /mdr/adam/{product}/datastructures | .
*mdrAdamProductDatastructuresGetASync* | *GET* /mdr/adam/{product}/datastructures | .
*mdrAdamProductDatastructuresStructureGetSync* | *GET* /mdr/adam/{product}/datastructures/{structure} | .
*mdrAdamProductDatastructuresStructureGetASync* | *GET* /mdr/adam/{product}/datastructures/{structure} | .
*mdrAdamProductDatastructuresStructureVariablesGetSync* | *GET* /mdr/adam/{product}/datastructures/{structure}/variables | .
*mdrAdamProductDatastructuresStructureVariablesGetASync* | *GET* /mdr/adam/{product}/datastructures/{structure}/variables | .
*mdrAdamProductDatastructuresStructureVariablesVarGetSync* | *GET* /mdr/adam/{product}/datastructures/{structure}/variables/{var} | .
*mdrAdamProductDatastructuresStructureVariablesVarGetASync* | *GET* /mdr/adam/{product}/datastructures/{structure}/variables/{var} | .
*mdrAdamProductDatastructuresStructureVarsetsGetSync* | *GET* /mdr/adam/{product}/datastructures/{structure}/varsets | .
*mdrAdamProductDatastructuresStructureVarsetsGetASync* | *GET* /mdr/adam/{product}/datastructures/{structure}/varsets | .
*mdrAdamProductDatastructuresStructureVarsetsVarsetGetSync* | *GET* /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | .
*mdrAdamProductDatastructuresStructureVarsetsVarsetGetASync* | *GET* /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | .
*mdrAdamProductGetSync* | *GET* /mdr/adam/{product} | .
*mdrAdamProductGetASync* | *GET* /mdr/adam/{product} | .


### CDASHImplementationGuideCDASHIGManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrCdashigVersionClassesClassDomainsGetSync* | *GET* /mdr/cdashig/{version}/classes/{class}/domains | .
*mdrCdashigVersionClassesClassDomainsGetASync* | *GET* /mdr/cdashig/{version}/classes/{class}/domains | .
*mdrCdashigVersionClassesClassGetSync* | *GET* /mdr/cdashig/{version}/classes/{class} | .
*mdrCdashigVersionClassesClassGetASync* | *GET* /mdr/cdashig/{version}/classes/{class} | .
*mdrCdashigVersionClassesClassScenariosGetSync* | *GET* /mdr/cdashig/{version}/classes/{class}/scenarios | .
*mdrCdashigVersionClassesClassScenariosGetASync* | *GET* /mdr/cdashig/{version}/classes/{class}/scenarios | .
*mdrCdashigVersionClassesGetSync* | *GET* /mdr/cdashig/{version}/classes | .
*mdrCdashigVersionClassesGetASync* | *GET* /mdr/cdashig/{version}/classes | .
*mdrCdashigVersionDomainsDomainFieldsFieldGetSync* | *GET* /mdr/cdashig/{version}/domains/{domain}/fields/{field} | .
*mdrCdashigVersionDomainsDomainFieldsFieldGetASync* | *GET* /mdr/cdashig/{version}/domains/{domain}/fields/{field} | .
*mdrCdashigVersionDomainsDomainFieldsGetSync* | *GET* /mdr/cdashig/{version}/domains/{domain}/fields | .
*mdrCdashigVersionDomainsDomainFieldsGetASync* | *GET* /mdr/cdashig/{version}/domains/{domain}/fields | .
*mdrCdashigVersionDomainsDomainGetSync* | *GET* /mdr/cdashig/{version}/domains/{domain} | .
*mdrCdashigVersionDomainsDomainGetASync* | *GET* /mdr/cdashig/{version}/domains/{domain} | .
*mdrCdashigVersionDomainsGetSync* | *GET* /mdr/cdashig/{version}/domains | .
*mdrCdashigVersionDomainsGetASync* | *GET* /mdr/cdashig/{version}/domains | .
*mdrCdashigVersionGetSync* | *GET* /mdr/cdashig/{version} | .
*mdrCdashigVersionGetASync* | *GET* /mdr/cdashig/{version} | .
*mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetSync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | .
*mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetASync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | .
*mdrCdashigVersionScenariosDomainScenarioFieldsGetSync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | .
*mdrCdashigVersionScenariosDomainScenarioFieldsGetASync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | .
*mdrCdashigVersionScenariosDomainScenarioGetSync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | .
*mdrCdashigVersionScenariosDomainScenarioGetASync* | *GET* /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | .
*mdrCdashigVersionScenariosGetSync* | *GET* /mdr/cdashig/{version}/scenarios | .
*mdrCdashigVersionScenariosGetASync* | *GET* /mdr/cdashig/{version}/scenarios | .
*mdrRootCdashigDomainsDomainFieldsFieldGetSync* | *GET* /mdr/root/cdashig/domains/{domain}/fields/{field} | .
*mdrRootCdashigDomainsDomainFieldsFieldGetASync* | *GET* /mdr/root/cdashig/domains/{domain}/fields/{field} | .
*mdrRootCdashigScenariosDomainScenarioFieldsFieldGetSync* | *GET* /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | .
*mdrRootCdashigScenariosDomainScenarioFieldsFieldGetASync* | *GET* /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | .


### ClinicalDataAcquisitionStandardsHarmonizationCDASHManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrCdashVersionClassesClassDomainsGetSync* | *GET* /mdr/cdash/{version}/classes/{class}/domains | .
*mdrCdashVersionClassesClassDomainsGetASync* | *GET* /mdr/cdash/{version}/classes/{class}/domains | .
*mdrCdashVersionClassesClassFieldsFieldGetSync* | *GET* /mdr/cdash/{version}/classes/{class}/fields/{field} | .
*mdrCdashVersionClassesClassFieldsFieldGetASync* | *GET* /mdr/cdash/{version}/classes/{class}/fields/{field} | .
*mdrCdashVersionClassesClassGetSync* | *GET* /mdr/cdash/{version}/classes/{class} | .
*mdrCdashVersionClassesClassGetASync* | *GET* /mdr/cdash/{version}/classes/{class} | .
*mdrCdashVersionClassesGetSync* | *GET* /mdr/cdash/{version}/classes | .
*mdrCdashVersionClassesGetASync* | *GET* /mdr/cdash/{version}/classes | .
*mdrCdashVersionDomainsDomainFieldsFieldGetSync* | *GET* /mdr/cdash/{version}/domains/{domain}/fields/{field} | .
*mdrCdashVersionDomainsDomainFieldsFieldGetASync* | *GET* /mdr/cdash/{version}/domains/{domain}/fields/{field} | .
*mdrCdashVersionDomainsDomainFieldsGetSync* | *GET* /mdr/cdash/{version}/domains/{domain}/fields | .
*mdrCdashVersionDomainsDomainFieldsGetASync* | *GET* /mdr/cdash/{version}/domains/{domain}/fields | .
*mdrCdashVersionDomainsDomainGetSync* | *GET* /mdr/cdash/{version}/domains/{domain} | .
*mdrCdashVersionDomainsDomainGetASync* | *GET* /mdr/cdash/{version}/domains/{domain} | .
*mdrCdashVersionDomainsGetSync* | *GET* /mdr/cdash/{version}/domains | .
*mdrCdashVersionDomainsGetASync* | *GET* /mdr/cdash/{version}/domains | .
*mdrCdashVersionGetSync* | *GET* /mdr/cdash/{version} | .
*mdrCdashVersionGetASync* | *GET* /mdr/cdash/{version} | .
*mdrRootCdashClassesClassFieldsFieldGetSync* | *GET* /mdr/root/cdash/classes/{class}/fields/{field} | .
*mdrRootCdashClassesClassFieldsFieldGetASync* | *GET* /mdr/root/cdash/classes/{class}/fields/{field} | .
*mdrRootCdashDomainsDomainFieldsFieldGetSync* | *GET* /mdr/root/cdash/domains/{domain}/fields/{field} | .
*mdrRootCdashDomainsDomainFieldsFieldGetASync* | *GET* /mdr/root/cdash/domains/{domain}/fields/{field} | .


### ControlledTerminologyCTManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrCtPackagesGetSync* | *GET* /mdr/ct/packages | .
*mdrCtPackagesGetASync* | *GET* /mdr/ct/packages | .
*mdrCtPackagesPackageCodelistsCodelistGetSync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist} | .
*mdrCtPackagesPackageCodelistsCodelistGetASync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist} | .
*mdrCtPackagesPackageCodelistsCodelistTermsGetSync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist}/terms | .
*mdrCtPackagesPackageCodelistsCodelistTermsGetASync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist}/terms | .
*mdrCtPackagesPackageCodelistsCodelistTermsTermGetSync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | .
*mdrCtPackagesPackageCodelistsCodelistTermsTermGetASync* | *GET* /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | .
*mdrCtPackagesPackageCodelistsGetSync* | *GET* /mdr/ct/packages/{package}/codelists | .
*mdrCtPackagesPackageCodelistsGetASync* | *GET* /mdr/ct/packages/{package}/codelists | .
*mdrCtPackagesProductGetSync* | *GET* /mdr/ct/packages/{product} | .
*mdrCtPackagesProductGetASync* | *GET* /mdr/ct/packages/{product} | .
*mdrRootCtProductGroupCodelistsCodelistGetSync* | *GET* /mdr/root/ct/{productGroup}/codelists/{codelist} | .
*mdrRootCtProductGroupCodelistsCodelistGetASync* | *GET* /mdr/root/ct/{productGroup}/codelists/{codelist} | .
*mdrRootCtProductGroupCodelistsCodelistTermsTermGetSync* | *GET* /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | .
*mdrRootCtProductGroupCodelistsCodelistTermsTermGetASync* | *GET* /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | .


### DefaultManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrAboutGetSync* | *GET* /mdr/about | .
*mdrAboutGetASync* | *GET* /mdr/about | .
*mdrLastupdatedGetSync* | *GET* /mdr/lastupdated | .
*mdrLastupdatedGetASync* | *GET* /mdr/lastupdated | .
*mdrProductsDataAnalysisGetSync* | *GET* /mdr/products/DataAnalysis | .
*mdrProductsDataAnalysisGetASync* | *GET* /mdr/products/DataAnalysis | .
*mdrProductsDataCollectionGetSync* | *GET* /mdr/products/DataCollection | .
*mdrProductsDataCollectionGetASync* | *GET* /mdr/products/DataCollection | .
*mdrProductsDataTabulationGetSync* | *GET* /mdr/products/DataTabulation | .
*mdrProductsDataTabulationGetASync* | *GET* /mdr/products/DataTabulation | .
*mdrProductsGetSync* | *GET* /mdr/products | .
*mdrProductsGetASync* | *GET* /mdr/products | .
*mdrProductsMeasuresGetSync* | *GET* /mdr/products/Measures | .
*mdrProductsMeasuresGetASync* | *GET* /mdr/products/Measures | .
*mdrProductsTerminologyGetSync* | *GET* /mdr/products/Terminology | .
*mdrProductsTerminologyGetASync* | *GET* /mdr/products/Terminology | .


### MeasuresManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrQrsMeasureVersionGetSync* | *GET* /mdr/qrs/{measure}/{version} | .
*mdrQrsMeasureVersionGetASync* | *GET* /mdr/qrs/{measure}/{version} | .
*mdrQrsMeasureVersionItemsGetSync* | *GET* /mdr/qrs/{measure}/{version}/items | .
*mdrQrsMeasureVersionItemsGetASync* | *GET* /mdr/qrs/{measure}/{version}/items | .
*mdrQrsMeasureVersionItemsItemGetSync* | *GET* /mdr/qrs/{measure}/{version}/items/{item} | .
*mdrQrsMeasureVersionItemsItemGetASync* | *GET* /mdr/qrs/{measure}/{version}/items/{item} | .
*mdrQrsMeasureVersionResponsegroupsGetSync* | *GET* /mdr/qrs/{measure}/{version}/responsegroups | .
*mdrQrsMeasureVersionResponsegroupsGetASync* | *GET* /mdr/qrs/{measure}/{version}/responsegroups | .
*mdrQrsMeasureVersionResponsegroupsResponsegroupGetSync* | *GET* /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | .
*mdrQrsMeasureVersionResponsegroupsResponsegroupGetASync* | *GET* /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | .


### SDTMImplementationGuideSDTMIGManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrRootSdtmigDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | .
*mdrRootSdtmigDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | .
*mdrSdtmigVersionClassesClassDatasetsGetSync* | *GET* /mdr/sdtmig/{version}/classes/{class}/datasets | .
*mdrSdtmigVersionClassesClassDatasetsGetASync* | *GET* /mdr/sdtmig/{version}/classes/{class}/datasets | .
*mdrSdtmigVersionClassesClassGetSync* | *GET* /mdr/sdtmig/{version}/classes/{class} | .
*mdrSdtmigVersionClassesClassGetASync* | *GET* /mdr/sdtmig/{version}/classes/{class} | .
*mdrSdtmigVersionClassesGetSync* | *GET* /mdr/sdtmig/{version}/classes | .
*mdrSdtmigVersionClassesGetASync* | *GET* /mdr/sdtmig/{version}/classes | .
*mdrSdtmigVersionDatasetsDatasetGetSync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset} | .
*mdrSdtmigVersionDatasetsDatasetGetASync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset} | .
*mdrSdtmigVersionDatasetsDatasetVariablesGetSync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset}/variables | .
*mdrSdtmigVersionDatasetsDatasetVariablesGetASync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset}/variables | .
*mdrSdtmigVersionDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | .
*mdrSdtmigVersionDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | .
*mdrSdtmigVersionDatasetsGetSync* | *GET* /mdr/sdtmig/{version}/datasets | .
*mdrSdtmigVersionDatasetsGetASync* | *GET* /mdr/sdtmig/{version}/datasets | .
*mdrSdtmigVersionGetSync* | *GET* /mdr/sdtmig/{version} | .
*mdrSdtmigVersionGetASync* | *GET* /mdr/sdtmig/{version} | .


### SENDImplementationGuideSENDIGManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrRootSendigDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/root/sendig/datasets/{dataset}/variables/{var} | .
*mdrRootSendigDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/root/sendig/datasets/{dataset}/variables/{var} | .
*mdrSendigVersionClassesClassDatasetsGetSync* | *GET* /mdr/sendig/{version}/classes/{class}/datasets | .
*mdrSendigVersionClassesClassDatasetsGetASync* | *GET* /mdr/sendig/{version}/classes/{class}/datasets | .
*mdrSendigVersionClassesClassGetSync* | *GET* /mdr/sendig/{version}/classes/{class} | .
*mdrSendigVersionClassesClassGetASync* | *GET* /mdr/sendig/{version}/classes/{class} | .
*mdrSendigVersionClassesGetSync* | *GET* /mdr/sendig/{version}/classes | .
*mdrSendigVersionClassesGetASync* | *GET* /mdr/sendig/{version}/classes | .
*mdrSendigVersionDatasetsDatasetGetSync* | *GET* /mdr/sendig/{version}/datasets/{dataset} | .
*mdrSendigVersionDatasetsDatasetGetASync* | *GET* /mdr/sendig/{version}/datasets/{dataset} | .
*mdrSendigVersionDatasetsDatasetVariablesGetSync* | *GET* /mdr/sendig/{version}/datasets/{dataset}/variables | .
*mdrSendigVersionDatasetsDatasetVariablesGetASync* | *GET* /mdr/sendig/{version}/datasets/{dataset}/variables | .
*mdrSendigVersionDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | .
*mdrSendigVersionDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | .
*mdrSendigVersionDatasetsGetSync* | *GET* /mdr/sendig/{version}/datasets | .
*mdrSendigVersionDatasetsGetASync* | *GET* /mdr/sendig/{version}/datasets | .
*mdrSendigVersionGetSync* | *GET* /mdr/sendig/{version} | .
*mdrSendigVersionGetASync* | *GET* /mdr/sendig/{version} | .


### SearchesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrSearchGetSync* | *GET* /mdr/search | .
*mdrSearchGetASync* | *GET* /mdr/search | .
*mdrSearchScopesGetSync* | *GET* /mdr/search/scopes | .
*mdrSearchScopesGetASync* | *GET* /mdr/search/scopes | .
*mdrSearchScopesScopeGetSync* | *GET* /mdr/search/scopes/{scope} | .
*mdrSearchScopesScopeGetASync* | *GET* /mdr/search/scopes/{scope} | .


### StatusesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*healthGetSync* | *GET* /health | .
*healthGetASync* | *GET* /health | .
*mdrMaintenanceGetSync* | *GET* /mdr/maintenance | .
*mdrMaintenanceGetASync* | *GET* /mdr/maintenance | .


### StudyDataTabulationModelSDTMManager
Method | HTTP request | Description
------------- | ------------- | -------------
*mdrRootSdtmClassesClassVariablesVarGetSync* | *GET* /mdr/root/sdtm/classes/{class}/variables/{var} | .
*mdrRootSdtmClassesClassVariablesVarGetASync* | *GET* /mdr/root/sdtm/classes/{class}/variables/{var} | .
*mdrRootSdtmDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/root/sdtm/datasets/{dataset}/variables/{var} | .
*mdrRootSdtmDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/root/sdtm/datasets/{dataset}/variables/{var} | .
*mdrSdtmVersionClassesClassDatasetsGetSync* | *GET* /mdr/sdtm/{version}/classes/{class}/datasets | .
*mdrSdtmVersionClassesClassDatasetsGetASync* | *GET* /mdr/sdtm/{version}/classes/{class}/datasets | .
*mdrSdtmVersionClassesClassGetSync* | *GET* /mdr/sdtm/{version}/classes/{class} | .
*mdrSdtmVersionClassesClassGetASync* | *GET* /mdr/sdtm/{version}/classes/{class} | .
*mdrSdtmVersionClassesClassVariablesGetSync* | *GET* /mdr/sdtm/{version}/classes/{class}/variables | .
*mdrSdtmVersionClassesClassVariablesGetASync* | *GET* /mdr/sdtm/{version}/classes/{class}/variables | .
*mdrSdtmVersionClassesClassVariablesVarGetSync* | *GET* /mdr/sdtm/{version}/classes/{class}/variables/{var} | .
*mdrSdtmVersionClassesClassVariablesVarGetASync* | *GET* /mdr/sdtm/{version}/classes/{class}/variables/{var} | .
*mdrSdtmVersionClassesGetSync* | *GET* /mdr/sdtm/{version}/classes | .
*mdrSdtmVersionClassesGetASync* | *GET* /mdr/sdtm/{version}/classes | .
*mdrSdtmVersionDatasetsDatasetGetSync* | *GET* /mdr/sdtm/{version}/datasets/{dataset} | .
*mdrSdtmVersionDatasetsDatasetGetASync* | *GET* /mdr/sdtm/{version}/datasets/{dataset} | .
*mdrSdtmVersionDatasetsDatasetVariablesGetSync* | *GET* /mdr/sdtm/{version}/datasets/{dataset}/variables | .
*mdrSdtmVersionDatasetsDatasetVariablesGetASync* | *GET* /mdr/sdtm/{version}/datasets/{dataset}/variables | .
*mdrSdtmVersionDatasetsDatasetVariablesVarGetSync* | *GET* /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | .
*mdrSdtmVersionDatasetsDatasetVariablesVarGetASync* | *GET* /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | .
*mdrSdtmVersionDatasetsGetSync* | *GET* /mdr/sdtm/{version}/datasets | .
*mdrSdtmVersionDatasetsGetASync* | *GET* /mdr/sdtm/{version}/datasets | .
*mdrSdtmVersionGetSync* | *GET* /mdr/sdtm/{version} | .
*mdrSdtmVersionGetASync* | *GET* /mdr/sdtm/{version} | .


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *About* | 
 *AboutLinks* | 
 *AboutRef* | 
 *AdamDatastructure* | 
 *AdamDatastructureLinks* | 
 *AdamDatastructureRef* | 
 *AdamDatastructureRefElement* | 
 *AdamDatastructureVariables* | 
 *AdamDatastructureVariablesLinks* | 
 *AdamDatastructureVariablesRef* | 
 *AdamDatastructureVarsets* | 
 *AdamDatastructureVarsetsLinks* | 
 *AdamDatastructureVarsetsRef* | 
 *AdamProduct* | 
 *AdamProductDatastructures* | 
 *AdamProductDatastructuresLinks* | 
 *AdamProductDatastructuresRef* | 
 *AdamProductLinks* | 
 *AdamProductRef* | 
 *AdamProductRefElement* | 
 *AdamVariable* | 
 *AdamVariableLinks* | 
 *AdamVariableRef* | 
 *AdamVariableRefElement* | 
 *AdamVarset* | 
 *AdamVarsetLinks* | 
 *AdamVarsetRef* | 
 *AdamVarsetRefElement* | 
 *CdashClass* | 
 *CdashClassDomains* | 
 *CdashClassDomainsLinks* | 
 *CdashClassDomainsRef* | 
 *CdashClassField* | 
 *CdashClassFieldLinks* | 
 *CdashClassFieldRef* | 
 *CdashClassFieldRefVersion* | 
 *CdashClassLinks* | 
 *CdashClassRef* | 
 *CdashClassRefElement* | 
 *CdashDomain* | 
 *CdashDomainField* | 
 *CdashDomainFieldLinks* | 
 *CdashDomainFieldRef* | 
 *CdashDomainFieldRefElement* | 
 *CdashDomainFieldRefVersion* | 
 *CdashDomainFields* | 
 *CdashDomainFieldsLinks* | 
 *CdashDomainFieldsRef* | 
 *CdashDomainLinks* | 
 *CdashDomainRef* | 
 *CdashDomainRefElement* | 
 *CdashProduct* | 
 *CdashProductClasses* | 
 *CdashProductClassesLinks* | 
 *CdashProductClassesRef* | 
 *CdashProductDomains* | 
 *CdashProductDomainsLinks* | 
 *CdashProductDomainsRef* | 
 *CdashProductLinks* | 
 *CdashProductRef* | 
 *CdashProductRefElement* | 
 *CdashigClass* | 
 *CdashigClassDomains* | 
 *CdashigClassDomainsLinks* | 
 *CdashigClassDomainsRef* | 
 *CdashigClassLinks* | 
 *CdashigClassRef* | 
 *CdashigClassRefElement* | 
 *CdashigClassRefSubclass* | 
 *CdashigClassScenarios* | 
 *CdashigClassScenariosLinks* | 
 *CdashigClassScenariosRef* | 
 *CdashigDomain* | 
 *CdashigDomainField* | 
 *CdashigDomainFieldLinks* | 
 *CdashigDomainFieldRef* | 
 *CdashigDomainFieldRefElement* | 
 *CdashigDomainFieldRefVersion* | 
 *CdashigDomainFields* | 
 *CdashigDomainFieldsLinks* | 
 *CdashigDomainFieldsRef* | 
 *CdashigDomainLinks* | 
 *CdashigDomainRef* | 
 *CdashigDomainRefElement* | 
 *CdashigProduct* | 
 *CdashigProductClasses* | 
 *CdashigProductClassesLinks* | 
 *CdashigProductClassesRef* | 
 *CdashigProductDomains* | 
 *CdashigProductDomainsLinks* | 
 *CdashigProductDomainsRef* | 
 *CdashigProductLinks* | 
 *CdashigProductRef* | 
 *CdashigProductRefElement* | 
 *CdashigProductScenarios* | 
 *CdashigProductScenariosLinks* | 
 *CdashigProductScenariosRef* | 
 *CdashigScenario* | 
 *CdashigScenarioField* | 
 *CdashigScenarioFieldLinks* | 
 *CdashigScenarioFieldRef* | 
 *CdashigScenarioFieldRefElement* | 
 *CdashigScenarioFieldRefVersion* | 
 *CdashigScenarioFields* | 
 *CdashigScenarioFieldsLinks* | 
 *CdashigScenarioFieldsRef* | 
 *CdashigScenarioLinks* | 
 *CdashigScenarioRef* | 
 *CdashigScenarioRefElement* | 
 *CtCodelist* | 
 *CtCodelistLinks* | 
 *CtCodelistRef* | 
 *CtCodelistRefElement* | 
 *CtCodelistRefVersion* | 
 *CtCodelistTerms* | 
 *CtCodelistTermsLinks* | 
 *CtCodelistTermsRef* | 
 *CtPackage* | 
 *CtPackageCodelists* | 
 *CtPackageCodelistsLinks* | 
 *CtPackageCodelistsRef* | 
 *CtPackageLinks* | 
 *CtPackageRef* | 
 *CtPackageRefElement* | 
 *CtPackageTerm* | 
 *CtPackages* | 
 *CtPackagesLinks* | 
 *CtPackagesRef* | 
 *CtTerm* | 
 *CtTermLinks* | 
 *CtTermRef* | 
 *CtTermRefElement* | 
 *CtTermRefVersion* | 
 *DefaultErrorResponse* | 
 *DefaultSearchResponse* | 
 *DefaultSearchResponse_hits_inner* | 
 *DefaultSearchScopes* | 
 *ExportAdamDatastructuresRow* | 
 *ExportAdamDatastructuresTable* | 
 *ExportAdamVariablesRow* | 
 *ExportAdamVariablesTable* | 
 *ExportAdamWorkbook* | 
 *ExportCdashClassVariablesRow* | 
 *ExportCdashDomainVariablesRow* | 
 *ExportCdashTable* | 
 *ExportCdashigDomainVariablesRow* | 
 *ExportCdashigScenarioVariablesRow* | 
 *ExportCdashigTable* | 
 *ExportCtCodelist* | 
 *ExportCtTable* | 
 *ExportCtTerm* | 
 *ExportQrsCsvItemsRow* | 
 *ExportQrsGeneral* | 
 *ExportQrsItemsTable* | 
 *ExportQrsResponses* | 
 *ExportQrsWorkbook* | 
 *ExportQrsWorkbookItemsRow* | 
 *ExportSdtmClassVariablesRow* | 
 *ExportSdtmDatasetVariablesRow* | 
 *ExportSdtmDatasetsRow* | 
 *ExportSdtmDatasetsTable* | 
 *ExportSdtmVariablesTable* | 
 *ExportSdtmWorkbook* | 
 *ExportSdtmigDatasetsRow* | 
 *ExportSdtmigDatasetsTable* | 
 *ExportSdtmigVariablesRow* | 
 *ExportSdtmigVariablesTable* | 
 *ExportSdtmigWorkbook* | 
 *ExportSendigDatasetsRow* | 
 *ExportSendigDatasetsTable* | 
 *ExportSendigVariablesRow* | 
 *ExportSendigVariablesTable* | 
 *ExportSendigWorkbook* | 
 *Health* | 
 *Lastupdated* | 
 *LastupdatedLinks* | 
 *LastupdatedRef* | 
 *MaintenanceBody* | 
 *ProductgroupDataAnalysis* | 
 *ProductgroupDataAnalysisLinks* | 
 *ProductgroupDataCollection* | 
 *ProductgroupDataCollectionLinks* | 
 *ProductgroupDataTabulation* | 
 *ProductgroupDataTabulationLinks* | 
 *ProductgroupQrs* | 
 *ProductgroupQrsLinks* | 
 *ProductgroupRef* | 
 *ProductgroupTerminology* | 
 *ProductgroupTerminologyLinks* | 
 *Products* | 
 *ProductsLinks* | 
 *ProductsRef* | 
 *QrsItem* | 
 *QrsItemLinks* | 
 *QrsItemRefElement* | 
 *QrsItems* | 
 *QrsItemsLinks* | 
 *QrsItemsRef* | 
 *QrsProduct* | 
 *QrsProductLinks* | 
 *QrsProductRef* | 
 *QrsRefElement* | 
 *QrsResponseLinks* | 
 *QrsResponsegroup* | 
 *QrsResponsegroupLinks* | 
 *QrsResponsegroupRef* | 
 *QrsResponsegroupRefElement* | 
 *QrsResponsegroups* | 
 *QrsResponsegroupsLinks* | 
 *QrsResponsegroupsRef* | 
 *QrsResponses* | 
 *RootCdashClassField* | 
 *RootCdashClassFieldLinks* | 
 *RootCdashClassFieldRef* | 
 *RootCdashDomainField* | 
 *RootCdashDomainFieldLinks* | 
 *RootCdashDomainFieldRef* | 
 *RootCdashigDomainField* | 
 *RootCdashigDomainFieldLinks* | 
 *RootCdashigDomainFieldRef* | 
 *RootCdashigScenarioField* | 
 *RootCdashigScenarioFieldLinks* | 
 *RootCdashigScenarioFieldRef* | 
 *RootCtCodelist* | 
 *RootCtCodelistLinks* | 
 *RootCtCodelistRef* | 
 *RootCtCodelistRefElement* | 
 *RootCtTerm* | 
 *RootCtTermLinks* | 
 *RootCtTermRef* | 
 *RootSdtmClassVariable* | 
 *RootSdtmClassVariableLinks* | 
 *RootSdtmClassVariableRef* | 
 *RootSdtmDatasetVariable* | 
 *RootSdtmDatasetVariableLinks* | 
 *RootSdtmDatasetVariableRef* | 
 *RootSdtmigDatasetVariable* | 
 *RootSdtmigDatasetVariableLinks* | 
 *RootSdtmigDatasetVariableRef* | 
 *RootSendigDatasetVariable* | 
 *RootSendigDatasetVariableLinks* | 
 *RootSendigDatasetVariableRef* | 
 *ScopeValues* | 
 *SdtmClass* | 
 *SdtmClassDatasets* | 
 *SdtmClassDatasetsLinks* | 
 *SdtmClassDatasetsRef* | 
 *SdtmClassLinks* | 
 *SdtmClassRef* | 
 *SdtmClassRefElement* | 
 *SdtmClassRefSubclass* | 
 *SdtmClassVariable* | 
 *SdtmClassVariableLinks* | 
 *SdtmClassVariableRef* | 
 *SdtmClassVariableRefElement* | 
 *SdtmClassVariableRefQualifies* | 
 *SdtmClassVariableRefTarget* | 
 *SdtmClassVariableRefVersion* | 
 *SdtmClassVariables* | 
 *SdtmClassVariablesLinks* | 
 *SdtmClassVariablesRef* | 
 *SdtmClasses* | 
 *SdtmClassesLinks* | 
 *SdtmClassesRef* | 
 *SdtmDataset* | 
 *SdtmDatasetLinks* | 
 *SdtmDatasetRef* | 
 *SdtmDatasetRefElement* | 
 *SdtmDatasetVariable* | 
 *SdtmDatasetVariableLinks* | 
 *SdtmDatasetVariableRef* | 
 *SdtmDatasetVariableRefElement* | 
 *SdtmDatasetVariableRefTarget* | 
 *SdtmDatasetVariableRefVersion* | 
 *SdtmDatasetVariables* | 
 *SdtmDatasetVariablesLinks* | 
 *SdtmDatasetVariablesRef* | 
 *SdtmDatasets* | 
 *SdtmDatasetsLinks* | 
 *SdtmDatasetsRef* | 
 *SdtmProduct* | 
 *SdtmProductLinks* | 
 *SdtmProductRef* | 
 *SdtmProductRefElement* | 
 *SdtmigClass* | 
 *SdtmigClassDatasets* | 
 *SdtmigClassDatasetsLinks* | 
 *SdtmigClassDatasetsRef* | 
 *SdtmigClassLinks* | 
 *SdtmigClassRef* | 
 *SdtmigClassRefElement* | 
 *SdtmigClassRefSubclass* | 
 *SdtmigClasses* | 
 *SdtmigClassesLinks* | 
 *SdtmigClassesRef* | 
 *SdtmigDataset* | 
 *SdtmigDatasetLinks* | 
 *SdtmigDatasetRef* | 
 *SdtmigDatasetRefElement* | 
 *SdtmigDatasetVariable* | 
 *SdtmigDatasetVariableLinks* | 
 *SdtmigDatasetVariableRef* | 
 *SdtmigDatasetVariableRefElement* | 
 *SdtmigDatasetVariableRefTarget* | 
 *SdtmigDatasetVariableRefVersion* | 
 *SdtmigDatasetVariables* | 
 *SdtmigDatasetVariablesLinks* | 
 *SdtmigDatasetVariablesRef* | 
 *SdtmigDatasets* | 
 *SdtmigDatasetsLinks* | 
 *SdtmigDatasetsRef* | 
 *SdtmigProduct* | 
 *SdtmigProductLinks* | 
 *SdtmigProductRef* | 
 *SdtmigProductRefElement* | 
 *SendigClass* | 
 *SendigClassDatasets* | 
 *SendigClassDatasetsLinks* | 
 *SendigClassDatasetsRef* | 
 *SendigClassLinks* | 
 *SendigClassRef* | 
 *SendigClassRefElement* | 
 *SendigClassRefSubclass* | 
 *SendigClasses* | 
 *SendigClassesLinks* | 
 *SendigClassesRef* | 
 *SendigDataset* | 
 *SendigDatasetLinks* | 
 *SendigDatasetRef* | 
 *SendigDatasetRefElement* | 
 *SendigDatasetVariable* | 
 *SendigDatasetVariableLinks* | 
 *SendigDatasetVariableRef* | 
 *SendigDatasetVariableRefElement* | 
 *SendigDatasetVariableRefVersion* | 
 *SendigDatasetVariables* | 
 *SendigDatasetVariablesLinks* | 
 *SendigDatasetVariablesRef* | 
 *SendigDatasets* | 
 *SendigDatasetsLinks* | 
 *SendigDatasetsRef* | 
 *SendigProduct* | 
 *SendigProductLinks* | 
 *SendigProductRef* | 
 *SendigProductRefElement* | 
 *XmlAbout* | 
 *XmlAdamDatastructure* | 
 *XmlAdamDatastructureVariables* | 
 *XmlAdamDatastructureVarsets* | 
 *XmlAdamProduct* | 
 *XmlAdamProductDatastructures* | 
 *XmlAdamVariable* | 
 *XmlAdamVarset* | 
 *XmlCdashClass* | 
 *XmlCdashClassDomains* | 
 *XmlCdashClassField* | 
 *XmlCdashDomain* | 
 *XmlCdashDomainField* | 
 *XmlCdashDomainFields* | 
 *XmlCdashProduct* | 
 *XmlCdashProductClasses* | 
 *XmlCdashProductDomains* | 
 *XmlCdashigClass* | 
 *XmlCdashigClassDomains* | 
 *XmlCdashigClassScenarios* | 
 *XmlCdashigDomain* | 
 *XmlCdashigDomainField* | 
 *XmlCdashigDomainFields* | 
 *XmlCdashigProduct* | 
 *XmlCdashigProductClasses* | 
 *XmlCdashigProductDomains* | 
 *XmlCdashigProductScenarios* | 
 *XmlCdashigScenario* | 
 *XmlCdashigScenarioField* | 
 *XmlCdashigScenarioFields* | 
 *XmlCtCodelist* | 
 *XmlCtCodelistTerms* | 
 *XmlCtPackage* | 
 *XmlCtPackageCodelists* | 
 *XmlCtPackages* | 
 *XmlCtTerm* | 
 *XmlLastupdated* | 
 *XmlProductgroupDataAnalysis* | 
 *XmlProductgroupDataCollection* | 
 *XmlProductgroupDataTabulation* | 
 *XmlProductgroupTerminology* | 
 *XmlProducts* | 
 *XmlQrsItem* | 
 *XmlQrsItems* | 
 *XmlQrsProduct* | 
 *XmlQrsResponsegroup* | 
 *XmlQrsResponsegroups* | 
 *XmlRootCdashClassField* | 
 *XmlRootCdashDomainField* | 
 *XmlRootCdashigDomainField* | 
 *XmlRootCdashigScenarioField* | 
 *XmlRootCtCodelist* | 
 *XmlRootCtTerm* | 
 *XmlRootSdtmClassVariable* | 
 *XmlRootSdtmDatasetVariable* | 
 *XmlRootSdtmigDatasetVariable* | 
 *XmlRootSendigDatasetVariable* | 
 *XmlSdtmClass* | 
 *XmlSdtmClassDatasets* | 
 *XmlSdtmClassVariable* | 
 *XmlSdtmClassVariables* | 
 *XmlSdtmClasses* | 
 *XmlSdtmDataset* | 
 *XmlSdtmDatasetVariable* | 
 *XmlSdtmDatasetVariables* | 
 *XmlSdtmDatasets* | 
 *XmlSdtmProduct* | 
 *XmlSdtmigClass* | 
 *XmlSdtmigClassDatasets* | 
 *XmlSdtmigClasses* | 
 *XmlSdtmigDataset* | 
 *XmlSdtmigDatasetVariable* | 
 *XmlSdtmigDatasetVariables* | 
 *XmlSdtmigDatasets* | 
 *XmlSdtmigProduct* | 
 *XmlSendigClass* | 
 *XmlSendigClassDatasets* | 
 *XmlSendigClasses* | 
 *XmlSendigDataset* | 
 *XmlSendigDatasetVariable* | 
 *XmlSendigDatasetVariables* | 
 *XmlSendigDatasets* | 
 *XmlSendigProduct* | 
 *_mdr_search_scopes_get_200_response* | 


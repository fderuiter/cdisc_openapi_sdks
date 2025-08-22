# OpenAPIClient-php

REST API Documentation for CDISC Library in production server


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure HTTP basic authorization: basicAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$product = adamig-1-1; // string | CDISC Library Product

try {
    $result = $apiInstance->mdrAdamProductDatastructuresGet($product);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi->mdrAdamProductDatastructuresGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://library.cdisc.org/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresget) | **GET** /mdr/adam/{product}/datastructures | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructureget) | **GET** /mdr/adam/{product}/datastructures/{structure} | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVariablesGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVariablesVarGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevariablesvarget) | **GET** /mdr/adam/{product}/datastructures/{structure}/variables/{var} | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVarsetsGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductDatastructuresStructureVarsetsVarsetGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductdatastructuresstructurevarsetsvarsetget) | **GET** /mdr/adam/{product}/datastructures/{structure}/varsets/{varset} | 
*AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi* | [**mdrAdamProductGet**](docs/Api/AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi.md#mdradamproductget) | **GET** /mdr/adam/{product} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassDomainsGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassdomainsget) | **GET** /mdr/cdashig/{version}/classes/{class}/domains | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassget) | **GET** /mdr/cdashig/{version}/classes/{class} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesClassScenariosGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesclassscenariosget) | **GET** /mdr/cdashig/{version}/classes/{class}/scenarios | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionClassesGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionclassesget) | **GET** /mdr/cdashig/{version}/classes | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainFieldsFieldGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields/{field} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainFieldsGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainfieldsget) | **GET** /mdr/cdashig/{version}/domains/{domain}/fields | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsDomainGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsdomainget) | **GET** /mdr/cdashig/{version}/domains/{domain} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionDomainsGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversiondomainsget) | **GET** /mdr/cdashig/{version}/domains | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionget) | **GET** /mdr/cdashig/{version} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsfieldget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioFieldsGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenariofieldsget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosDomainScenarioGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosdomainscenarioget) | **GET** /mdr/cdashig/{version}/scenarios/{domain}.{scenario} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrCdashigVersionScenariosGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrcdashigversionscenariosget) | **GET** /mdr/cdashig/{version}/scenarios | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrRootCdashigDomainsDomainFieldsFieldGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdashig/domains/{domain}/fields/{field} | 
*CDASHImplementationGuideCDASHIGApi* | [**mdrRootCdashigScenariosDomainScenarioFieldsFieldGet**](docs/Api/CDASHImplementationGuideCDASHIGApi.md#mdrrootcdashigscenariosdomainscenariofieldsfieldget) | **GET** /mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassDomainsGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassdomainsget) | **GET** /mdr/cdash/{version}/classes/{class}/domains | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassFieldsFieldGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassfieldsfieldget) | **GET** /mdr/cdash/{version}/classes/{class}/fields/{field} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesClassGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesclassget) | **GET** /mdr/cdash/{version}/classes/{class} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionClassesGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionclassesget) | **GET** /mdr/cdash/{version}/classes | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainFieldsFieldGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsfieldget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields/{field} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainFieldsGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainfieldsget) | **GET** /mdr/cdash/{version}/domains/{domain}/fields | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsDomainGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsdomainget) | **GET** /mdr/cdash/{version}/domains/{domain} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionDomainsGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversiondomainsget) | **GET** /mdr/cdash/{version}/domains | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrCdashVersionGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrcdashversionget) | **GET** /mdr/cdash/{version} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrRootCdashClassesClassFieldsFieldGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashclassesclassfieldsfieldget) | **GET** /mdr/root/cdash/classes/{class}/fields/{field} | 
*ClinicalDataAcquisitionStandardsHarmonizationCDASHApi* | [**mdrRootCdashDomainsDomainFieldsFieldGet**](docs/Api/ClinicalDataAcquisitionStandardsHarmonizationCDASHApi.md#mdrrootcdashdomainsdomainfieldsfieldget) | **GET** /mdr/root/cdash/domains/{domain}/fields/{field} | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagesget) | **GET** /mdr/ct/packages | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelistget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist} | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistTermsGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermsget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsCodelistTermsTermGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistscodelisttermstermget) | **GET** /mdr/ct/packages/{package}/codelists/{codelist}/terms/{term} | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesPackageCodelistsGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagespackagecodelistsget) | **GET** /mdr/ct/packages/{package}/codelists | 
*ControlledTerminologyCTApi* | [**mdrCtPackagesProductGet**](docs/Api/ControlledTerminologyCTApi.md#mdrctpackagesproductget) | **GET** /mdr/ct/packages/{product} | 
*ControlledTerminologyCTApi* | [**mdrRootCtProductGroupCodelistsCodelistGet**](docs/Api/ControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelistget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist} | 
*ControlledTerminologyCTApi* | [**mdrRootCtProductGroupCodelistsCodelistTermsTermGet**](docs/Api/ControlledTerminologyCTApi.md#mdrrootctproductgroupcodelistscodelisttermstermget) | **GET** /mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term} | 
*DefaultApi* | [**mdrAboutGet**](docs/Api/DefaultApi.md#mdraboutget) | **GET** /mdr/about | 
*DefaultApi* | [**mdrLastupdatedGet**](docs/Api/DefaultApi.md#mdrlastupdatedget) | **GET** /mdr/lastupdated | 
*DefaultApi* | [**mdrProductsDataAnalysisGet**](docs/Api/DefaultApi.md#mdrproductsdataanalysisget) | **GET** /mdr/products/DataAnalysis | 
*DefaultApi* | [**mdrProductsDataCollectionGet**](docs/Api/DefaultApi.md#mdrproductsdatacollectionget) | **GET** /mdr/products/DataCollection | 
*DefaultApi* | [**mdrProductsDataTabulationGet**](docs/Api/DefaultApi.md#mdrproductsdatatabulationget) | **GET** /mdr/products/DataTabulation | 
*DefaultApi* | [**mdrProductsGet**](docs/Api/DefaultApi.md#mdrproductsget) | **GET** /mdr/products | 
*DefaultApi* | [**mdrProductsMeasuresGet**](docs/Api/DefaultApi.md#mdrproductsmeasuresget) | **GET** /mdr/products/Measures | 
*DefaultApi* | [**mdrProductsTerminologyGet**](docs/Api/DefaultApi.md#mdrproductsterminologyget) | **GET** /mdr/products/Terminology | 
*MeasuresApi* | [**mdrQrsMeasureVersionGet**](docs/Api/MeasuresApi.md#mdrqrsmeasureversionget) | **GET** /mdr/qrs/{measure}/{version} | 
*MeasuresApi* | [**mdrQrsMeasureVersionItemsGet**](docs/Api/MeasuresApi.md#mdrqrsmeasureversionitemsget) | **GET** /mdr/qrs/{measure}/{version}/items | 
*MeasuresApi* | [**mdrQrsMeasureVersionItemsItemGet**](docs/Api/MeasuresApi.md#mdrqrsmeasureversionitemsitemget) | **GET** /mdr/qrs/{measure}/{version}/items/{item} | 
*MeasuresApi* | [**mdrQrsMeasureVersionResponsegroupsGet**](docs/Api/MeasuresApi.md#mdrqrsmeasureversionresponsegroupsget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups | 
*MeasuresApi* | [**mdrQrsMeasureVersionResponsegroupsResponsegroupGet**](docs/Api/MeasuresApi.md#mdrqrsmeasureversionresponsegroupsresponsegroupget) | **GET** /mdr/qrs/{measure}/{version}/responsegroups/{responsegroup} | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrRootSdtmigDatasetsDatasetVariablesVarGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrrootsdtmigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtmig/datasets/{dataset}/variables/{var} | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesClassDatasetsGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassdatasetsget) | **GET** /mdr/sdtmig/{version}/classes/{class}/datasets | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesClassGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesclassget) | **GET** /mdr/sdtmig/{version}/classes/{class} | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionClassesGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionclassesget) | **GET** /mdr/sdtmig/{version}/classes | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset} | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetVariablesGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsDatasetVariablesVarGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtmig/{version}/datasets/{dataset}/variables/{var} | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionDatasetsGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversiondatasetsget) | **GET** /mdr/sdtmig/{version}/datasets | 
*SDTMImplementationGuideSDTMIGApi* | [**mdrSdtmigVersionGet**](docs/Api/SDTMImplementationGuideSDTMIGApi.md#mdrsdtmigversionget) | **GET** /mdr/sdtmig/{version} | 
*SENDImplementationGuideSENDIGApi* | [**mdrRootSendigDatasetsDatasetVariablesVarGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrrootsendigdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sendig/datasets/{dataset}/variables/{var} | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesClassDatasetsGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassdatasetsget) | **GET** /mdr/sendig/{version}/classes/{class}/datasets | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesClassGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesclassget) | **GET** /mdr/sendig/{version}/classes/{class} | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionClassesGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversionclassesget) | **GET** /mdr/sendig/{version}/classes | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetget) | **GET** /mdr/sendig/{version}/datasets/{dataset} | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetVariablesGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsDatasetVariablesVarGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sendig/{version}/datasets/{dataset}/variables/{var} | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionDatasetsGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversiondatasetsget) | **GET** /mdr/sendig/{version}/datasets | 
*SENDImplementationGuideSENDIGApi* | [**mdrSendigVersionGet**](docs/Api/SENDImplementationGuideSENDIGApi.md#mdrsendigversionget) | **GET** /mdr/sendig/{version} | 
*SearchesApi* | [**mdrSearchGet**](docs/Api/SearchesApi.md#mdrsearchget) | **GET** /mdr/search | 
*SearchesApi* | [**mdrSearchScopesGet**](docs/Api/SearchesApi.md#mdrsearchscopesget) | **GET** /mdr/search/scopes | 
*SearchesApi* | [**mdrSearchScopesScopeGet**](docs/Api/SearchesApi.md#mdrsearchscopesscopeget) | **GET** /mdr/search/scopes/{scope} | 
*StatusesApi* | [**healthGet**](docs/Api/StatusesApi.md#healthget) | **GET** /health | 
*StatusesApi* | [**mdrMaintenanceGet**](docs/Api/StatusesApi.md#mdrmaintenanceget) | **GET** /mdr/maintenance | 
*StudyDataTabulationModelSDTMApi* | [**mdrRootSdtmClassesClassVariablesVarGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrrootsdtmclassesclassvariablesvarget) | **GET** /mdr/root/sdtm/classes/{class}/variables/{var} | 
*StudyDataTabulationModelSDTMApi* | [**mdrRootSdtmDatasetsDatasetVariablesVarGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrrootsdtmdatasetsdatasetvariablesvarget) | **GET** /mdr/root/sdtm/datasets/{dataset}/variables/{var} | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassDatasetsGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassdatasetsget) | **GET** /mdr/sdtm/{version}/classes/{class}/datasets | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassget) | **GET** /mdr/sdtm/{version}/classes/{class} | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassVariablesGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesClassVariablesVarGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesclassvariablesvarget) | **GET** /mdr/sdtm/{version}/classes/{class}/variables/{var} | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionClassesGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionclassesget) | **GET** /mdr/sdtm/{version}/classes | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetget) | **GET** /mdr/sdtm/{version}/datasets/{dataset} | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetVariablesGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsDatasetVariablesVarGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsdatasetvariablesvarget) | **GET** /mdr/sdtm/{version}/datasets/{dataset}/variables/{var} | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionDatasetsGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversiondatasetsget) | **GET** /mdr/sdtm/{version}/datasets | 
*StudyDataTabulationModelSDTMApi* | [**mdrSdtmVersionGet**](docs/Api/StudyDataTabulationModelSDTMApi.md#mdrsdtmversionget) | **GET** /mdr/sdtm/{version} | 

## Models

- [About](docs/Model/About.md)
- [AboutLinks](docs/Model/AboutLinks.md)
- [AboutRef](docs/Model/AboutRef.md)
- [AdamDatastructure](docs/Model/AdamDatastructure.md)
- [AdamDatastructureLinks](docs/Model/AdamDatastructureLinks.md)
- [AdamDatastructureRef](docs/Model/AdamDatastructureRef.md)
- [AdamDatastructureRefElement](docs/Model/AdamDatastructureRefElement.md)
- [AdamDatastructureVariables](docs/Model/AdamDatastructureVariables.md)
- [AdamDatastructureVariablesLinks](docs/Model/AdamDatastructureVariablesLinks.md)
- [AdamDatastructureVariablesRef](docs/Model/AdamDatastructureVariablesRef.md)
- [AdamDatastructureVarsets](docs/Model/AdamDatastructureVarsets.md)
- [AdamDatastructureVarsetsLinks](docs/Model/AdamDatastructureVarsetsLinks.md)
- [AdamDatastructureVarsetsRef](docs/Model/AdamDatastructureVarsetsRef.md)
- [AdamProduct](docs/Model/AdamProduct.md)
- [AdamProductDatastructures](docs/Model/AdamProductDatastructures.md)
- [AdamProductDatastructuresLinks](docs/Model/AdamProductDatastructuresLinks.md)
- [AdamProductDatastructuresRef](docs/Model/AdamProductDatastructuresRef.md)
- [AdamProductLinks](docs/Model/AdamProductLinks.md)
- [AdamProductRef](docs/Model/AdamProductRef.md)
- [AdamProductRefElement](docs/Model/AdamProductRefElement.md)
- [AdamVariable](docs/Model/AdamVariable.md)
- [AdamVariableLinks](docs/Model/AdamVariableLinks.md)
- [AdamVariableRef](docs/Model/AdamVariableRef.md)
- [AdamVariableRefElement](docs/Model/AdamVariableRefElement.md)
- [AdamVarset](docs/Model/AdamVarset.md)
- [AdamVarsetLinks](docs/Model/AdamVarsetLinks.md)
- [AdamVarsetRef](docs/Model/AdamVarsetRef.md)
- [AdamVarsetRefElement](docs/Model/AdamVarsetRefElement.md)
- [CdashClass](docs/Model/CdashClass.md)
- [CdashClassDomains](docs/Model/CdashClassDomains.md)
- [CdashClassDomainsLinks](docs/Model/CdashClassDomainsLinks.md)
- [CdashClassDomainsRef](docs/Model/CdashClassDomainsRef.md)
- [CdashClassField](docs/Model/CdashClassField.md)
- [CdashClassFieldLinks](docs/Model/CdashClassFieldLinks.md)
- [CdashClassFieldRef](docs/Model/CdashClassFieldRef.md)
- [CdashClassFieldRefVersion](docs/Model/CdashClassFieldRefVersion.md)
- [CdashClassLinks](docs/Model/CdashClassLinks.md)
- [CdashClassRef](docs/Model/CdashClassRef.md)
- [CdashClassRefElement](docs/Model/CdashClassRefElement.md)
- [CdashDomain](docs/Model/CdashDomain.md)
- [CdashDomainField](docs/Model/CdashDomainField.md)
- [CdashDomainFieldLinks](docs/Model/CdashDomainFieldLinks.md)
- [CdashDomainFieldRef](docs/Model/CdashDomainFieldRef.md)
- [CdashDomainFieldRefElement](docs/Model/CdashDomainFieldRefElement.md)
- [CdashDomainFieldRefVersion](docs/Model/CdashDomainFieldRefVersion.md)
- [CdashDomainFields](docs/Model/CdashDomainFields.md)
- [CdashDomainFieldsLinks](docs/Model/CdashDomainFieldsLinks.md)
- [CdashDomainFieldsRef](docs/Model/CdashDomainFieldsRef.md)
- [CdashDomainLinks](docs/Model/CdashDomainLinks.md)
- [CdashDomainRef](docs/Model/CdashDomainRef.md)
- [CdashDomainRefElement](docs/Model/CdashDomainRefElement.md)
- [CdashProduct](docs/Model/CdashProduct.md)
- [CdashProductClasses](docs/Model/CdashProductClasses.md)
- [CdashProductClassesLinks](docs/Model/CdashProductClassesLinks.md)
- [CdashProductClassesRef](docs/Model/CdashProductClassesRef.md)
- [CdashProductDomains](docs/Model/CdashProductDomains.md)
- [CdashProductDomainsLinks](docs/Model/CdashProductDomainsLinks.md)
- [CdashProductDomainsRef](docs/Model/CdashProductDomainsRef.md)
- [CdashProductLinks](docs/Model/CdashProductLinks.md)
- [CdashProductRef](docs/Model/CdashProductRef.md)
- [CdashProductRefElement](docs/Model/CdashProductRefElement.md)
- [CdashigClass](docs/Model/CdashigClass.md)
- [CdashigClassDomains](docs/Model/CdashigClassDomains.md)
- [CdashigClassDomainsLinks](docs/Model/CdashigClassDomainsLinks.md)
- [CdashigClassDomainsRef](docs/Model/CdashigClassDomainsRef.md)
- [CdashigClassLinks](docs/Model/CdashigClassLinks.md)
- [CdashigClassRef](docs/Model/CdashigClassRef.md)
- [CdashigClassRefElement](docs/Model/CdashigClassRefElement.md)
- [CdashigClassRefSubclass](docs/Model/CdashigClassRefSubclass.md)
- [CdashigClassScenarios](docs/Model/CdashigClassScenarios.md)
- [CdashigClassScenariosLinks](docs/Model/CdashigClassScenariosLinks.md)
- [CdashigClassScenariosRef](docs/Model/CdashigClassScenariosRef.md)
- [CdashigDomain](docs/Model/CdashigDomain.md)
- [CdashigDomainField](docs/Model/CdashigDomainField.md)
- [CdashigDomainFieldLinks](docs/Model/CdashigDomainFieldLinks.md)
- [CdashigDomainFieldRef](docs/Model/CdashigDomainFieldRef.md)
- [CdashigDomainFieldRefElement](docs/Model/CdashigDomainFieldRefElement.md)
- [CdashigDomainFieldRefVersion](docs/Model/CdashigDomainFieldRefVersion.md)
- [CdashigDomainFields](docs/Model/CdashigDomainFields.md)
- [CdashigDomainFieldsLinks](docs/Model/CdashigDomainFieldsLinks.md)
- [CdashigDomainFieldsRef](docs/Model/CdashigDomainFieldsRef.md)
- [CdashigDomainLinks](docs/Model/CdashigDomainLinks.md)
- [CdashigDomainRef](docs/Model/CdashigDomainRef.md)
- [CdashigDomainRefElement](docs/Model/CdashigDomainRefElement.md)
- [CdashigProduct](docs/Model/CdashigProduct.md)
- [CdashigProductClasses](docs/Model/CdashigProductClasses.md)
- [CdashigProductClassesLinks](docs/Model/CdashigProductClassesLinks.md)
- [CdashigProductClassesRef](docs/Model/CdashigProductClassesRef.md)
- [CdashigProductDomains](docs/Model/CdashigProductDomains.md)
- [CdashigProductDomainsLinks](docs/Model/CdashigProductDomainsLinks.md)
- [CdashigProductDomainsRef](docs/Model/CdashigProductDomainsRef.md)
- [CdashigProductLinks](docs/Model/CdashigProductLinks.md)
- [CdashigProductRef](docs/Model/CdashigProductRef.md)
- [CdashigProductRefElement](docs/Model/CdashigProductRefElement.md)
- [CdashigProductScenarios](docs/Model/CdashigProductScenarios.md)
- [CdashigProductScenariosLinks](docs/Model/CdashigProductScenariosLinks.md)
- [CdashigProductScenariosRef](docs/Model/CdashigProductScenariosRef.md)
- [CdashigScenario](docs/Model/CdashigScenario.md)
- [CdashigScenarioField](docs/Model/CdashigScenarioField.md)
- [CdashigScenarioFieldLinks](docs/Model/CdashigScenarioFieldLinks.md)
- [CdashigScenarioFieldRef](docs/Model/CdashigScenarioFieldRef.md)
- [CdashigScenarioFieldRefElement](docs/Model/CdashigScenarioFieldRefElement.md)
- [CdashigScenarioFieldRefVersion](docs/Model/CdashigScenarioFieldRefVersion.md)
- [CdashigScenarioFields](docs/Model/CdashigScenarioFields.md)
- [CdashigScenarioFieldsLinks](docs/Model/CdashigScenarioFieldsLinks.md)
- [CdashigScenarioFieldsRef](docs/Model/CdashigScenarioFieldsRef.md)
- [CdashigScenarioLinks](docs/Model/CdashigScenarioLinks.md)
- [CdashigScenarioRef](docs/Model/CdashigScenarioRef.md)
- [CdashigScenarioRefElement](docs/Model/CdashigScenarioRefElement.md)
- [CtCodelist](docs/Model/CtCodelist.md)
- [CtCodelistLinks](docs/Model/CtCodelistLinks.md)
- [CtCodelistRef](docs/Model/CtCodelistRef.md)
- [CtCodelistRefElement](docs/Model/CtCodelistRefElement.md)
- [CtCodelistRefVersion](docs/Model/CtCodelistRefVersion.md)
- [CtCodelistTerms](docs/Model/CtCodelistTerms.md)
- [CtCodelistTermsLinks](docs/Model/CtCodelistTermsLinks.md)
- [CtCodelistTermsRef](docs/Model/CtCodelistTermsRef.md)
- [CtPackage](docs/Model/CtPackage.md)
- [CtPackageCodelists](docs/Model/CtPackageCodelists.md)
- [CtPackageCodelistsLinks](docs/Model/CtPackageCodelistsLinks.md)
- [CtPackageCodelistsRef](docs/Model/CtPackageCodelistsRef.md)
- [CtPackageLinks](docs/Model/CtPackageLinks.md)
- [CtPackageRef](docs/Model/CtPackageRef.md)
- [CtPackageRefElement](docs/Model/CtPackageRefElement.md)
- [CtPackageTerm](docs/Model/CtPackageTerm.md)
- [CtPackages](docs/Model/CtPackages.md)
- [CtPackagesLinks](docs/Model/CtPackagesLinks.md)
- [CtPackagesRef](docs/Model/CtPackagesRef.md)
- [CtTerm](docs/Model/CtTerm.md)
- [CtTermLinks](docs/Model/CtTermLinks.md)
- [CtTermRef](docs/Model/CtTermRef.md)
- [CtTermRefElement](docs/Model/CtTermRefElement.md)
- [CtTermRefVersion](docs/Model/CtTermRefVersion.md)
- [DefaultErrorResponse](docs/Model/DefaultErrorResponse.md)
- [DefaultSearchResponse](docs/Model/DefaultSearchResponse.md)
- [DefaultSearchResponseHitsInner](docs/Model/DefaultSearchResponseHitsInner.md)
- [DefaultSearchScopes](docs/Model/DefaultSearchScopes.md)
- [ExportAdamDatastructuresRow](docs/Model/ExportAdamDatastructuresRow.md)
- [ExportAdamDatastructuresTable](docs/Model/ExportAdamDatastructuresTable.md)
- [ExportAdamVariablesRow](docs/Model/ExportAdamVariablesRow.md)
- [ExportAdamVariablesTable](docs/Model/ExportAdamVariablesTable.md)
- [ExportAdamWorkbook](docs/Model/ExportAdamWorkbook.md)
- [ExportCdashClassVariablesRow](docs/Model/ExportCdashClassVariablesRow.md)
- [ExportCdashDomainVariablesRow](docs/Model/ExportCdashDomainVariablesRow.md)
- [ExportCdashTable](docs/Model/ExportCdashTable.md)
- [ExportCdashigDomainVariablesRow](docs/Model/ExportCdashigDomainVariablesRow.md)
- [ExportCdashigScenarioVariablesRow](docs/Model/ExportCdashigScenarioVariablesRow.md)
- [ExportCdashigTable](docs/Model/ExportCdashigTable.md)
- [ExportCtCodelist](docs/Model/ExportCtCodelist.md)
- [ExportCtTable](docs/Model/ExportCtTable.md)
- [ExportCtTerm](docs/Model/ExportCtTerm.md)
- [ExportQrsCsvItemsRow](docs/Model/ExportQrsCsvItemsRow.md)
- [ExportQrsGeneral](docs/Model/ExportQrsGeneral.md)
- [ExportQrsItemsTable](docs/Model/ExportQrsItemsTable.md)
- [ExportQrsResponses](docs/Model/ExportQrsResponses.md)
- [ExportQrsWorkbook](docs/Model/ExportQrsWorkbook.md)
- [ExportQrsWorkbookItemsRow](docs/Model/ExportQrsWorkbookItemsRow.md)
- [ExportSdtmClassVariablesRow](docs/Model/ExportSdtmClassVariablesRow.md)
- [ExportSdtmDatasetVariablesRow](docs/Model/ExportSdtmDatasetVariablesRow.md)
- [ExportSdtmDatasetsRow](docs/Model/ExportSdtmDatasetsRow.md)
- [ExportSdtmDatasetsTable](docs/Model/ExportSdtmDatasetsTable.md)
- [ExportSdtmVariablesTable](docs/Model/ExportSdtmVariablesTable.md)
- [ExportSdtmWorkbook](docs/Model/ExportSdtmWorkbook.md)
- [ExportSdtmigDatasetsRow](docs/Model/ExportSdtmigDatasetsRow.md)
- [ExportSdtmigDatasetsTable](docs/Model/ExportSdtmigDatasetsTable.md)
- [ExportSdtmigVariablesRow](docs/Model/ExportSdtmigVariablesRow.md)
- [ExportSdtmigVariablesTable](docs/Model/ExportSdtmigVariablesTable.md)
- [ExportSdtmigWorkbook](docs/Model/ExportSdtmigWorkbook.md)
- [ExportSendigDatasetsRow](docs/Model/ExportSendigDatasetsRow.md)
- [ExportSendigDatasetsTable](docs/Model/ExportSendigDatasetsTable.md)
- [ExportSendigVariablesRow](docs/Model/ExportSendigVariablesRow.md)
- [ExportSendigVariablesTable](docs/Model/ExportSendigVariablesTable.md)
- [ExportSendigWorkbook](docs/Model/ExportSendigWorkbook.md)
- [Health](docs/Model/Health.md)
- [Lastupdated](docs/Model/Lastupdated.md)
- [LastupdatedLinks](docs/Model/LastupdatedLinks.md)
- [LastupdatedRef](docs/Model/LastupdatedRef.md)
- [MaintenanceBody](docs/Model/MaintenanceBody.md)
- [MdrSearchScopesGet200Response](docs/Model/MdrSearchScopesGet200Response.md)
- [ProductgroupDataAnalysis](docs/Model/ProductgroupDataAnalysis.md)
- [ProductgroupDataAnalysisLinks](docs/Model/ProductgroupDataAnalysisLinks.md)
- [ProductgroupDataCollection](docs/Model/ProductgroupDataCollection.md)
- [ProductgroupDataCollectionLinks](docs/Model/ProductgroupDataCollectionLinks.md)
- [ProductgroupDataTabulation](docs/Model/ProductgroupDataTabulation.md)
- [ProductgroupDataTabulationLinks](docs/Model/ProductgroupDataTabulationLinks.md)
- [ProductgroupQrs](docs/Model/ProductgroupQrs.md)
- [ProductgroupQrsLinks](docs/Model/ProductgroupQrsLinks.md)
- [ProductgroupRef](docs/Model/ProductgroupRef.md)
- [ProductgroupTerminology](docs/Model/ProductgroupTerminology.md)
- [ProductgroupTerminologyLinks](docs/Model/ProductgroupTerminologyLinks.md)
- [Products](docs/Model/Products.md)
- [ProductsLinks](docs/Model/ProductsLinks.md)
- [ProductsRef](docs/Model/ProductsRef.md)
- [QrsItem](docs/Model/QrsItem.md)
- [QrsItemLinks](docs/Model/QrsItemLinks.md)
- [QrsItemRefElement](docs/Model/QrsItemRefElement.md)
- [QrsItems](docs/Model/QrsItems.md)
- [QrsItemsLinks](docs/Model/QrsItemsLinks.md)
- [QrsItemsRef](docs/Model/QrsItemsRef.md)
- [QrsProduct](docs/Model/QrsProduct.md)
- [QrsProductLinks](docs/Model/QrsProductLinks.md)
- [QrsProductRef](docs/Model/QrsProductRef.md)
- [QrsRefElement](docs/Model/QrsRefElement.md)
- [QrsResponseLinks](docs/Model/QrsResponseLinks.md)
- [QrsResponsegroup](docs/Model/QrsResponsegroup.md)
- [QrsResponsegroupLinks](docs/Model/QrsResponsegroupLinks.md)
- [QrsResponsegroupRef](docs/Model/QrsResponsegroupRef.md)
- [QrsResponsegroupRefElement](docs/Model/QrsResponsegroupRefElement.md)
- [QrsResponsegroups](docs/Model/QrsResponsegroups.md)
- [QrsResponsegroupsLinks](docs/Model/QrsResponsegroupsLinks.md)
- [QrsResponsegroupsRef](docs/Model/QrsResponsegroupsRef.md)
- [QrsResponses](docs/Model/QrsResponses.md)
- [RootCdashClassField](docs/Model/RootCdashClassField.md)
- [RootCdashClassFieldLinks](docs/Model/RootCdashClassFieldLinks.md)
- [RootCdashClassFieldRef](docs/Model/RootCdashClassFieldRef.md)
- [RootCdashDomainField](docs/Model/RootCdashDomainField.md)
- [RootCdashDomainFieldLinks](docs/Model/RootCdashDomainFieldLinks.md)
- [RootCdashDomainFieldRef](docs/Model/RootCdashDomainFieldRef.md)
- [RootCdashigDomainField](docs/Model/RootCdashigDomainField.md)
- [RootCdashigDomainFieldLinks](docs/Model/RootCdashigDomainFieldLinks.md)
- [RootCdashigDomainFieldRef](docs/Model/RootCdashigDomainFieldRef.md)
- [RootCdashigScenarioField](docs/Model/RootCdashigScenarioField.md)
- [RootCdashigScenarioFieldLinks](docs/Model/RootCdashigScenarioFieldLinks.md)
- [RootCdashigScenarioFieldRef](docs/Model/RootCdashigScenarioFieldRef.md)
- [RootCtCodelist](docs/Model/RootCtCodelist.md)
- [RootCtCodelistLinks](docs/Model/RootCtCodelistLinks.md)
- [RootCtCodelistRef](docs/Model/RootCtCodelistRef.md)
- [RootCtCodelistRefElement](docs/Model/RootCtCodelistRefElement.md)
- [RootCtTerm](docs/Model/RootCtTerm.md)
- [RootCtTermLinks](docs/Model/RootCtTermLinks.md)
- [RootCtTermRef](docs/Model/RootCtTermRef.md)
- [RootSdtmClassVariable](docs/Model/RootSdtmClassVariable.md)
- [RootSdtmClassVariableLinks](docs/Model/RootSdtmClassVariableLinks.md)
- [RootSdtmClassVariableRef](docs/Model/RootSdtmClassVariableRef.md)
- [RootSdtmDatasetVariable](docs/Model/RootSdtmDatasetVariable.md)
- [RootSdtmDatasetVariableLinks](docs/Model/RootSdtmDatasetVariableLinks.md)
- [RootSdtmDatasetVariableRef](docs/Model/RootSdtmDatasetVariableRef.md)
- [RootSdtmigDatasetVariable](docs/Model/RootSdtmigDatasetVariable.md)
- [RootSdtmigDatasetVariableLinks](docs/Model/RootSdtmigDatasetVariableLinks.md)
- [RootSdtmigDatasetVariableRef](docs/Model/RootSdtmigDatasetVariableRef.md)
- [RootSendigDatasetVariable](docs/Model/RootSendigDatasetVariable.md)
- [RootSendigDatasetVariableLinks](docs/Model/RootSendigDatasetVariableLinks.md)
- [RootSendigDatasetVariableRef](docs/Model/RootSendigDatasetVariableRef.md)
- [ScopeValues](docs/Model/ScopeValues.md)
- [SdtmClass](docs/Model/SdtmClass.md)
- [SdtmClassDatasets](docs/Model/SdtmClassDatasets.md)
- [SdtmClassDatasetsLinks](docs/Model/SdtmClassDatasetsLinks.md)
- [SdtmClassDatasetsRef](docs/Model/SdtmClassDatasetsRef.md)
- [SdtmClassLinks](docs/Model/SdtmClassLinks.md)
- [SdtmClassRef](docs/Model/SdtmClassRef.md)
- [SdtmClassRefElement](docs/Model/SdtmClassRefElement.md)
- [SdtmClassRefSubclass](docs/Model/SdtmClassRefSubclass.md)
- [SdtmClassVariable](docs/Model/SdtmClassVariable.md)
- [SdtmClassVariableLinks](docs/Model/SdtmClassVariableLinks.md)
- [SdtmClassVariableRef](docs/Model/SdtmClassVariableRef.md)
- [SdtmClassVariableRefElement](docs/Model/SdtmClassVariableRefElement.md)
- [SdtmClassVariableRefQualifies](docs/Model/SdtmClassVariableRefQualifies.md)
- [SdtmClassVariableRefTarget](docs/Model/SdtmClassVariableRefTarget.md)
- [SdtmClassVariableRefVersion](docs/Model/SdtmClassVariableRefVersion.md)
- [SdtmClassVariables](docs/Model/SdtmClassVariables.md)
- [SdtmClassVariablesLinks](docs/Model/SdtmClassVariablesLinks.md)
- [SdtmClassVariablesRef](docs/Model/SdtmClassVariablesRef.md)
- [SdtmClasses](docs/Model/SdtmClasses.md)
- [SdtmClassesLinks](docs/Model/SdtmClassesLinks.md)
- [SdtmClassesRef](docs/Model/SdtmClassesRef.md)
- [SdtmDataset](docs/Model/SdtmDataset.md)
- [SdtmDatasetLinks](docs/Model/SdtmDatasetLinks.md)
- [SdtmDatasetRef](docs/Model/SdtmDatasetRef.md)
- [SdtmDatasetRefElement](docs/Model/SdtmDatasetRefElement.md)
- [SdtmDatasetVariable](docs/Model/SdtmDatasetVariable.md)
- [SdtmDatasetVariableLinks](docs/Model/SdtmDatasetVariableLinks.md)
- [SdtmDatasetVariableRef](docs/Model/SdtmDatasetVariableRef.md)
- [SdtmDatasetVariableRefElement](docs/Model/SdtmDatasetVariableRefElement.md)
- [SdtmDatasetVariableRefTarget](docs/Model/SdtmDatasetVariableRefTarget.md)
- [SdtmDatasetVariableRefVersion](docs/Model/SdtmDatasetVariableRefVersion.md)
- [SdtmDatasetVariables](docs/Model/SdtmDatasetVariables.md)
- [SdtmDatasetVariablesLinks](docs/Model/SdtmDatasetVariablesLinks.md)
- [SdtmDatasetVariablesRef](docs/Model/SdtmDatasetVariablesRef.md)
- [SdtmDatasets](docs/Model/SdtmDatasets.md)
- [SdtmDatasetsLinks](docs/Model/SdtmDatasetsLinks.md)
- [SdtmDatasetsRef](docs/Model/SdtmDatasetsRef.md)
- [SdtmProduct](docs/Model/SdtmProduct.md)
- [SdtmProductLinks](docs/Model/SdtmProductLinks.md)
- [SdtmProductRef](docs/Model/SdtmProductRef.md)
- [SdtmProductRefElement](docs/Model/SdtmProductRefElement.md)
- [SdtmigClass](docs/Model/SdtmigClass.md)
- [SdtmigClassDatasets](docs/Model/SdtmigClassDatasets.md)
- [SdtmigClassDatasetsLinks](docs/Model/SdtmigClassDatasetsLinks.md)
- [SdtmigClassDatasetsRef](docs/Model/SdtmigClassDatasetsRef.md)
- [SdtmigClassLinks](docs/Model/SdtmigClassLinks.md)
- [SdtmigClassRef](docs/Model/SdtmigClassRef.md)
- [SdtmigClassRefElement](docs/Model/SdtmigClassRefElement.md)
- [SdtmigClassRefSubclass](docs/Model/SdtmigClassRefSubclass.md)
- [SdtmigClasses](docs/Model/SdtmigClasses.md)
- [SdtmigClassesLinks](docs/Model/SdtmigClassesLinks.md)
- [SdtmigClassesRef](docs/Model/SdtmigClassesRef.md)
- [SdtmigDataset](docs/Model/SdtmigDataset.md)
- [SdtmigDatasetLinks](docs/Model/SdtmigDatasetLinks.md)
- [SdtmigDatasetRef](docs/Model/SdtmigDatasetRef.md)
- [SdtmigDatasetRefElement](docs/Model/SdtmigDatasetRefElement.md)
- [SdtmigDatasetVariable](docs/Model/SdtmigDatasetVariable.md)
- [SdtmigDatasetVariableLinks](docs/Model/SdtmigDatasetVariableLinks.md)
- [SdtmigDatasetVariableRef](docs/Model/SdtmigDatasetVariableRef.md)
- [SdtmigDatasetVariableRefElement](docs/Model/SdtmigDatasetVariableRefElement.md)
- [SdtmigDatasetVariableRefTarget](docs/Model/SdtmigDatasetVariableRefTarget.md)
- [SdtmigDatasetVariableRefVersion](docs/Model/SdtmigDatasetVariableRefVersion.md)
- [SdtmigDatasetVariables](docs/Model/SdtmigDatasetVariables.md)
- [SdtmigDatasetVariablesLinks](docs/Model/SdtmigDatasetVariablesLinks.md)
- [SdtmigDatasetVariablesRef](docs/Model/SdtmigDatasetVariablesRef.md)
- [SdtmigDatasets](docs/Model/SdtmigDatasets.md)
- [SdtmigDatasetsLinks](docs/Model/SdtmigDatasetsLinks.md)
- [SdtmigDatasetsRef](docs/Model/SdtmigDatasetsRef.md)
- [SdtmigProduct](docs/Model/SdtmigProduct.md)
- [SdtmigProductLinks](docs/Model/SdtmigProductLinks.md)
- [SdtmigProductRef](docs/Model/SdtmigProductRef.md)
- [SdtmigProductRefElement](docs/Model/SdtmigProductRefElement.md)
- [SendigClass](docs/Model/SendigClass.md)
- [SendigClassDatasets](docs/Model/SendigClassDatasets.md)
- [SendigClassDatasetsLinks](docs/Model/SendigClassDatasetsLinks.md)
- [SendigClassDatasetsRef](docs/Model/SendigClassDatasetsRef.md)
- [SendigClassLinks](docs/Model/SendigClassLinks.md)
- [SendigClassRef](docs/Model/SendigClassRef.md)
- [SendigClassRefElement](docs/Model/SendigClassRefElement.md)
- [SendigClassRefSubclass](docs/Model/SendigClassRefSubclass.md)
- [SendigClasses](docs/Model/SendigClasses.md)
- [SendigClassesLinks](docs/Model/SendigClassesLinks.md)
- [SendigClassesRef](docs/Model/SendigClassesRef.md)
- [SendigDataset](docs/Model/SendigDataset.md)
- [SendigDatasetLinks](docs/Model/SendigDatasetLinks.md)
- [SendigDatasetRef](docs/Model/SendigDatasetRef.md)
- [SendigDatasetRefElement](docs/Model/SendigDatasetRefElement.md)
- [SendigDatasetVariable](docs/Model/SendigDatasetVariable.md)
- [SendigDatasetVariableLinks](docs/Model/SendigDatasetVariableLinks.md)
- [SendigDatasetVariableRef](docs/Model/SendigDatasetVariableRef.md)
- [SendigDatasetVariableRefElement](docs/Model/SendigDatasetVariableRefElement.md)
- [SendigDatasetVariableRefVersion](docs/Model/SendigDatasetVariableRefVersion.md)
- [SendigDatasetVariables](docs/Model/SendigDatasetVariables.md)
- [SendigDatasetVariablesLinks](docs/Model/SendigDatasetVariablesLinks.md)
- [SendigDatasetVariablesRef](docs/Model/SendigDatasetVariablesRef.md)
- [SendigDatasets](docs/Model/SendigDatasets.md)
- [SendigDatasetsLinks](docs/Model/SendigDatasetsLinks.md)
- [SendigDatasetsRef](docs/Model/SendigDatasetsRef.md)
- [SendigProduct](docs/Model/SendigProduct.md)
- [SendigProductLinks](docs/Model/SendigProductLinks.md)
- [SendigProductRef](docs/Model/SendigProductRef.md)
- [SendigProductRefElement](docs/Model/SendigProductRefElement.md)
- [XmlAbout](docs/Model/XmlAbout.md)
- [XmlAdamDatastructure](docs/Model/XmlAdamDatastructure.md)
- [XmlAdamDatastructureVariables](docs/Model/XmlAdamDatastructureVariables.md)
- [XmlAdamDatastructureVarsets](docs/Model/XmlAdamDatastructureVarsets.md)
- [XmlAdamProduct](docs/Model/XmlAdamProduct.md)
- [XmlAdamProductDatastructures](docs/Model/XmlAdamProductDatastructures.md)
- [XmlAdamVariable](docs/Model/XmlAdamVariable.md)
- [XmlAdamVarset](docs/Model/XmlAdamVarset.md)
- [XmlCdashClass](docs/Model/XmlCdashClass.md)
- [XmlCdashClassDomains](docs/Model/XmlCdashClassDomains.md)
- [XmlCdashClassField](docs/Model/XmlCdashClassField.md)
- [XmlCdashDomain](docs/Model/XmlCdashDomain.md)
- [XmlCdashDomainField](docs/Model/XmlCdashDomainField.md)
- [XmlCdashDomainFields](docs/Model/XmlCdashDomainFields.md)
- [XmlCdashProduct](docs/Model/XmlCdashProduct.md)
- [XmlCdashProductClasses](docs/Model/XmlCdashProductClasses.md)
- [XmlCdashProductDomains](docs/Model/XmlCdashProductDomains.md)
- [XmlCdashigClass](docs/Model/XmlCdashigClass.md)
- [XmlCdashigClassDomains](docs/Model/XmlCdashigClassDomains.md)
- [XmlCdashigClassScenarios](docs/Model/XmlCdashigClassScenarios.md)
- [XmlCdashigDomain](docs/Model/XmlCdashigDomain.md)
- [XmlCdashigDomainField](docs/Model/XmlCdashigDomainField.md)
- [XmlCdashigDomainFields](docs/Model/XmlCdashigDomainFields.md)
- [XmlCdashigProduct](docs/Model/XmlCdashigProduct.md)
- [XmlCdashigProductClasses](docs/Model/XmlCdashigProductClasses.md)
- [XmlCdashigProductDomains](docs/Model/XmlCdashigProductDomains.md)
- [XmlCdashigProductScenarios](docs/Model/XmlCdashigProductScenarios.md)
- [XmlCdashigScenario](docs/Model/XmlCdashigScenario.md)
- [XmlCdashigScenarioField](docs/Model/XmlCdashigScenarioField.md)
- [XmlCdashigScenarioFields](docs/Model/XmlCdashigScenarioFields.md)
- [XmlCtCodelist](docs/Model/XmlCtCodelist.md)
- [XmlCtCodelistTerms](docs/Model/XmlCtCodelistTerms.md)
- [XmlCtPackage](docs/Model/XmlCtPackage.md)
- [XmlCtPackageCodelists](docs/Model/XmlCtPackageCodelists.md)
- [XmlCtPackages](docs/Model/XmlCtPackages.md)
- [XmlCtTerm](docs/Model/XmlCtTerm.md)
- [XmlLastupdated](docs/Model/XmlLastupdated.md)
- [XmlProductgroupDataAnalysis](docs/Model/XmlProductgroupDataAnalysis.md)
- [XmlProductgroupDataCollection](docs/Model/XmlProductgroupDataCollection.md)
- [XmlProductgroupDataTabulation](docs/Model/XmlProductgroupDataTabulation.md)
- [XmlProductgroupTerminology](docs/Model/XmlProductgroupTerminology.md)
- [XmlProducts](docs/Model/XmlProducts.md)
- [XmlQrsItem](docs/Model/XmlQrsItem.md)
- [XmlQrsItems](docs/Model/XmlQrsItems.md)
- [XmlQrsProduct](docs/Model/XmlQrsProduct.md)
- [XmlQrsResponsegroup](docs/Model/XmlQrsResponsegroup.md)
- [XmlQrsResponsegroups](docs/Model/XmlQrsResponsegroups.md)
- [XmlRootCdashClassField](docs/Model/XmlRootCdashClassField.md)
- [XmlRootCdashDomainField](docs/Model/XmlRootCdashDomainField.md)
- [XmlRootCdashigDomainField](docs/Model/XmlRootCdashigDomainField.md)
- [XmlRootCdashigScenarioField](docs/Model/XmlRootCdashigScenarioField.md)
- [XmlRootCtCodelist](docs/Model/XmlRootCtCodelist.md)
- [XmlRootCtTerm](docs/Model/XmlRootCtTerm.md)
- [XmlRootSdtmClassVariable](docs/Model/XmlRootSdtmClassVariable.md)
- [XmlRootSdtmDatasetVariable](docs/Model/XmlRootSdtmDatasetVariable.md)
- [XmlRootSdtmigDatasetVariable](docs/Model/XmlRootSdtmigDatasetVariable.md)
- [XmlRootSendigDatasetVariable](docs/Model/XmlRootSendigDatasetVariable.md)
- [XmlSdtmClass](docs/Model/XmlSdtmClass.md)
- [XmlSdtmClassDatasets](docs/Model/XmlSdtmClassDatasets.md)
- [XmlSdtmClassVariable](docs/Model/XmlSdtmClassVariable.md)
- [XmlSdtmClassVariables](docs/Model/XmlSdtmClassVariables.md)
- [XmlSdtmClasses](docs/Model/XmlSdtmClasses.md)
- [XmlSdtmDataset](docs/Model/XmlSdtmDataset.md)
- [XmlSdtmDatasetVariable](docs/Model/XmlSdtmDatasetVariable.md)
- [XmlSdtmDatasetVariables](docs/Model/XmlSdtmDatasetVariables.md)
- [XmlSdtmDatasets](docs/Model/XmlSdtmDatasets.md)
- [XmlSdtmProduct](docs/Model/XmlSdtmProduct.md)
- [XmlSdtmigClass](docs/Model/XmlSdtmigClass.md)
- [XmlSdtmigClassDatasets](docs/Model/XmlSdtmigClassDatasets.md)
- [XmlSdtmigClasses](docs/Model/XmlSdtmigClasses.md)
- [XmlSdtmigDataset](docs/Model/XmlSdtmigDataset.md)
- [XmlSdtmigDatasetVariable](docs/Model/XmlSdtmigDatasetVariable.md)
- [XmlSdtmigDatasetVariables](docs/Model/XmlSdtmigDatasetVariables.md)
- [XmlSdtmigDatasets](docs/Model/XmlSdtmigDatasets.md)
- [XmlSdtmigProduct](docs/Model/XmlSdtmigProduct.md)
- [XmlSendigClass](docs/Model/XmlSendigClass.md)
- [XmlSendigClassDatasets](docs/Model/XmlSendigClassDatasets.md)
- [XmlSendigClasses](docs/Model/XmlSendigClasses.md)
- [XmlSendigDataset](docs/Model/XmlSendigDataset.md)
- [XmlSendigDatasetVariable](docs/Model/XmlSendigDatasetVariable.md)
- [XmlSendigDatasetVariables](docs/Model/XmlSendigDatasetVariables.md)
- [XmlSendigDatasets](docs/Model/XmlSendigDatasets.md)
- [XmlSendigProduct](docs/Model/XmlSendigProduct.md)

## Authorization

Authentication schemes defined for the API:
### basicAuth

- **Type**: HTTP basic authentication

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

cdisc_library_support@cdisc.org

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.1.0`
    - Generator version: `7.16.0-SNAPSHOT`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`

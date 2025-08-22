import localVarRequest from 'request';

export * from './about';
export * from './aboutLinks';
export * from './aboutRef';
export * from './adamDatastructure';
export * from './adamDatastructureLinks';
export * from './adamDatastructureRef';
export * from './adamDatastructureRefElement';
export * from './adamDatastructureVariables';
export * from './adamDatastructureVariablesLinks';
export * from './adamDatastructureVariablesRef';
export * from './adamDatastructureVarsets';
export * from './adamDatastructureVarsetsLinks';
export * from './adamDatastructureVarsetsRef';
export * from './adamProduct';
export * from './adamProductDatastructures';
export * from './adamProductDatastructuresLinks';
export * from './adamProductDatastructuresRef';
export * from './adamProductLinks';
export * from './adamProductRef';
export * from './adamProductRefElement';
export * from './adamVariable';
export * from './adamVariableLinks';
export * from './adamVariableRef';
export * from './adamVariableRefElement';
export * from './adamVarset';
export * from './adamVarsetLinks';
export * from './adamVarsetRef';
export * from './adamVarsetRefElement';
export * from './cdashClass';
export * from './cdashClassDomains';
export * from './cdashClassDomainsLinks';
export * from './cdashClassDomainsRef';
export * from './cdashClassField';
export * from './cdashClassFieldLinks';
export * from './cdashClassFieldRef';
export * from './cdashClassFieldRefVersion';
export * from './cdashClassLinks';
export * from './cdashClassRef';
export * from './cdashClassRefElement';
export * from './cdashDomain';
export * from './cdashDomainField';
export * from './cdashDomainFieldLinks';
export * from './cdashDomainFieldRef';
export * from './cdashDomainFieldRefElement';
export * from './cdashDomainFieldRefVersion';
export * from './cdashDomainFields';
export * from './cdashDomainFieldsLinks';
export * from './cdashDomainFieldsRef';
export * from './cdashDomainLinks';
export * from './cdashDomainRef';
export * from './cdashDomainRefElement';
export * from './cdashProduct';
export * from './cdashProductClasses';
export * from './cdashProductClassesLinks';
export * from './cdashProductClassesRef';
export * from './cdashProductDomains';
export * from './cdashProductDomainsLinks';
export * from './cdashProductDomainsRef';
export * from './cdashProductLinks';
export * from './cdashProductRef';
export * from './cdashProductRefElement';
export * from './cdashigClass';
export * from './cdashigClassDomains';
export * from './cdashigClassDomainsLinks';
export * from './cdashigClassDomainsRef';
export * from './cdashigClassLinks';
export * from './cdashigClassRef';
export * from './cdashigClassRefElement';
export * from './cdashigClassRefSubclass';
export * from './cdashigClassScenarios';
export * from './cdashigClassScenariosLinks';
export * from './cdashigClassScenariosRef';
export * from './cdashigDomain';
export * from './cdashigDomainField';
export * from './cdashigDomainFieldLinks';
export * from './cdashigDomainFieldRef';
export * from './cdashigDomainFieldRefElement';
export * from './cdashigDomainFieldRefVersion';
export * from './cdashigDomainFields';
export * from './cdashigDomainFieldsLinks';
export * from './cdashigDomainFieldsRef';
export * from './cdashigDomainLinks';
export * from './cdashigDomainRef';
export * from './cdashigDomainRefElement';
export * from './cdashigProduct';
export * from './cdashigProductClasses';
export * from './cdashigProductClassesLinks';
export * from './cdashigProductClassesRef';
export * from './cdashigProductDomains';
export * from './cdashigProductDomainsLinks';
export * from './cdashigProductDomainsRef';
export * from './cdashigProductLinks';
export * from './cdashigProductRef';
export * from './cdashigProductRefElement';
export * from './cdashigProductScenarios';
export * from './cdashigProductScenariosLinks';
export * from './cdashigProductScenariosRef';
export * from './cdashigScenario';
export * from './cdashigScenarioField';
export * from './cdashigScenarioFieldLinks';
export * from './cdashigScenarioFieldRef';
export * from './cdashigScenarioFieldRefElement';
export * from './cdashigScenarioFieldRefVersion';
export * from './cdashigScenarioFields';
export * from './cdashigScenarioFieldsLinks';
export * from './cdashigScenarioFieldsRef';
export * from './cdashigScenarioLinks';
export * from './cdashigScenarioRef';
export * from './cdashigScenarioRefElement';
export * from './ctCodelist';
export * from './ctCodelistLinks';
export * from './ctCodelistRef';
export * from './ctCodelistRefElement';
export * from './ctCodelistRefVersion';
export * from './ctCodelistTerms';
export * from './ctCodelistTermsLinks';
export * from './ctCodelistTermsRef';
export * from './ctPackage';
export * from './ctPackageCodelists';
export * from './ctPackageCodelistsLinks';
export * from './ctPackageCodelistsRef';
export * from './ctPackageLinks';
export * from './ctPackageRef';
export * from './ctPackageRefElement';
export * from './ctPackageTerm';
export * from './ctPackages';
export * from './ctPackagesLinks';
export * from './ctPackagesRef';
export * from './ctTerm';
export * from './ctTermLinks';
export * from './ctTermRef';
export * from './ctTermRefElement';
export * from './ctTermRefVersion';
export * from './defaultErrorResponse';
export * from './defaultSearchResponse';
export * from './defaultSearchResponseHitsInner';
export * from './defaultSearchScopes';
export * from './exportAdamDatastructuresRow';
export * from './exportAdamDatastructuresTable';
export * from './exportAdamVariablesRow';
export * from './exportAdamVariablesTable';
export * from './exportAdamWorkbook';
export * from './exportCdashClassVariablesRow';
export * from './exportCdashDomainVariablesRow';
export * from './exportCdashTable';
export * from './exportCdashigDomainVariablesRow';
export * from './exportCdashigScenarioVariablesRow';
export * from './exportCdashigTable';
export * from './exportCtCodelist';
export * from './exportCtTable';
export * from './exportCtTerm';
export * from './exportQrsCsvItemsRow';
export * from './exportQrsGeneral';
export * from './exportQrsItemsTable';
export * from './exportQrsResponses';
export * from './exportQrsWorkbook';
export * from './exportQrsWorkbookItemsRow';
export * from './exportSdtmClassVariablesRow';
export * from './exportSdtmDatasetVariablesRow';
export * from './exportSdtmDatasetsRow';
export * from './exportSdtmDatasetsTable';
export * from './exportSdtmVariablesTable';
export * from './exportSdtmWorkbook';
export * from './exportSdtmigDatasetsRow';
export * from './exportSdtmigDatasetsTable';
export * from './exportSdtmigVariablesRow';
export * from './exportSdtmigVariablesTable';
export * from './exportSdtmigWorkbook';
export * from './exportSendigDatasetsRow';
export * from './exportSendigDatasetsTable';
export * from './exportSendigVariablesRow';
export * from './exportSendigVariablesTable';
export * from './exportSendigWorkbook';
export * from './health';
export * from './lastupdated';
export * from './lastupdatedLinks';
export * from './lastupdatedRef';
export * from './maintenanceBody';
export * from './mdrSearchScopesGet200Response';
export * from './productgroupDataAnalysis';
export * from './productgroupDataAnalysisLinks';
export * from './productgroupDataCollection';
export * from './productgroupDataCollectionLinks';
export * from './productgroupDataTabulation';
export * from './productgroupDataTabulationLinks';
export * from './productgroupQrs';
export * from './productgroupQrsLinks';
export * from './productgroupRef';
export * from './productgroupTerminology';
export * from './productgroupTerminologyLinks';
export * from './products';
export * from './productsLinks';
export * from './productsRef';
export * from './qrsItem';
export * from './qrsItemLinks';
export * from './qrsItemRefElement';
export * from './qrsItems';
export * from './qrsItemsLinks';
export * from './qrsItemsRef';
export * from './qrsProduct';
export * from './qrsProductLinks';
export * from './qrsProductRef';
export * from './qrsRefElement';
export * from './qrsResponseLinks';
export * from './qrsResponsegroup';
export * from './qrsResponsegroupLinks';
export * from './qrsResponsegroupRef';
export * from './qrsResponsegroupRefElement';
export * from './qrsResponsegroups';
export * from './qrsResponsegroupsLinks';
export * from './qrsResponsegroupsRef';
export * from './qrsResponses';
export * from './rootCdashClassField';
export * from './rootCdashClassFieldLinks';
export * from './rootCdashClassFieldRef';
export * from './rootCdashDomainField';
export * from './rootCdashDomainFieldLinks';
export * from './rootCdashDomainFieldRef';
export * from './rootCdashigDomainField';
export * from './rootCdashigDomainFieldLinks';
export * from './rootCdashigDomainFieldRef';
export * from './rootCdashigScenarioField';
export * from './rootCdashigScenarioFieldLinks';
export * from './rootCdashigScenarioFieldRef';
export * from './rootCtCodelist';
export * from './rootCtCodelistLinks';
export * from './rootCtCodelistRef';
export * from './rootCtCodelistRefElement';
export * from './rootCtTerm';
export * from './rootCtTermLinks';
export * from './rootCtTermRef';
export * from './rootSdtmClassVariable';
export * from './rootSdtmClassVariableLinks';
export * from './rootSdtmClassVariableRef';
export * from './rootSdtmDatasetVariable';
export * from './rootSdtmDatasetVariableLinks';
export * from './rootSdtmDatasetVariableRef';
export * from './rootSdtmigDatasetVariable';
export * from './rootSdtmigDatasetVariableLinks';
export * from './rootSdtmigDatasetVariableRef';
export * from './rootSendigDatasetVariable';
export * from './rootSendigDatasetVariableLinks';
export * from './rootSendigDatasetVariableRef';
export * from './scopeValues';
export * from './sdtmClass';
export * from './sdtmClassDatasets';
export * from './sdtmClassDatasetsLinks';
export * from './sdtmClassDatasetsRef';
export * from './sdtmClassLinks';
export * from './sdtmClassRef';
export * from './sdtmClassRefElement';
export * from './sdtmClassRefSubclass';
export * from './sdtmClassVariable';
export * from './sdtmClassVariableLinks';
export * from './sdtmClassVariableRef';
export * from './sdtmClassVariableRefElement';
export * from './sdtmClassVariableRefQualifies';
export * from './sdtmClassVariableRefTarget';
export * from './sdtmClassVariableRefVersion';
export * from './sdtmClassVariables';
export * from './sdtmClassVariablesLinks';
export * from './sdtmClassVariablesRef';
export * from './sdtmClasses';
export * from './sdtmClassesLinks';
export * from './sdtmClassesRef';
export * from './sdtmDataset';
export * from './sdtmDatasetLinks';
export * from './sdtmDatasetRef';
export * from './sdtmDatasetRefElement';
export * from './sdtmDatasetVariable';
export * from './sdtmDatasetVariableLinks';
export * from './sdtmDatasetVariableRef';
export * from './sdtmDatasetVariableRefElement';
export * from './sdtmDatasetVariableRefTarget';
export * from './sdtmDatasetVariableRefVersion';
export * from './sdtmDatasetVariables';
export * from './sdtmDatasetVariablesLinks';
export * from './sdtmDatasetVariablesRef';
export * from './sdtmDatasets';
export * from './sdtmDatasetsLinks';
export * from './sdtmDatasetsRef';
export * from './sdtmProduct';
export * from './sdtmProductLinks';
export * from './sdtmProductRef';
export * from './sdtmProductRefElement';
export * from './sdtmigClass';
export * from './sdtmigClassDatasets';
export * from './sdtmigClassDatasetsLinks';
export * from './sdtmigClassDatasetsRef';
export * from './sdtmigClassLinks';
export * from './sdtmigClassRef';
export * from './sdtmigClassRefElement';
export * from './sdtmigClassRefSubclass';
export * from './sdtmigClasses';
export * from './sdtmigClassesLinks';
export * from './sdtmigClassesRef';
export * from './sdtmigDataset';
export * from './sdtmigDatasetLinks';
export * from './sdtmigDatasetRef';
export * from './sdtmigDatasetRefElement';
export * from './sdtmigDatasetVariable';
export * from './sdtmigDatasetVariableLinks';
export * from './sdtmigDatasetVariableRef';
export * from './sdtmigDatasetVariableRefElement';
export * from './sdtmigDatasetVariableRefTarget';
export * from './sdtmigDatasetVariableRefVersion';
export * from './sdtmigDatasetVariables';
export * from './sdtmigDatasetVariablesLinks';
export * from './sdtmigDatasetVariablesRef';
export * from './sdtmigDatasets';
export * from './sdtmigDatasetsLinks';
export * from './sdtmigDatasetsRef';
export * from './sdtmigProduct';
export * from './sdtmigProductLinks';
export * from './sdtmigProductRef';
export * from './sdtmigProductRefElement';
export * from './sendigClass';
export * from './sendigClassDatasets';
export * from './sendigClassDatasetsLinks';
export * from './sendigClassDatasetsRef';
export * from './sendigClassLinks';
export * from './sendigClassRef';
export * from './sendigClassRefElement';
export * from './sendigClassRefSubclass';
export * from './sendigClasses';
export * from './sendigClassesLinks';
export * from './sendigClassesRef';
export * from './sendigDataset';
export * from './sendigDatasetLinks';
export * from './sendigDatasetRef';
export * from './sendigDatasetRefElement';
export * from './sendigDatasetVariable';
export * from './sendigDatasetVariableLinks';
export * from './sendigDatasetVariableRef';
export * from './sendigDatasetVariableRefElement';
export * from './sendigDatasetVariableRefVersion';
export * from './sendigDatasetVariables';
export * from './sendigDatasetVariablesLinks';
export * from './sendigDatasetVariablesRef';
export * from './sendigDatasets';
export * from './sendigDatasetsLinks';
export * from './sendigDatasetsRef';
export * from './sendigProduct';
export * from './sendigProductLinks';
export * from './sendigProductRef';
export * from './sendigProductRefElement';
export * from './xmlAbout';
export * from './xmlAdamDatastructure';
export * from './xmlAdamDatastructureVariables';
export * from './xmlAdamDatastructureVarsets';
export * from './xmlAdamProduct';
export * from './xmlAdamProductDatastructures';
export * from './xmlAdamVariable';
export * from './xmlAdamVarset';
export * from './xmlCdashClass';
export * from './xmlCdashClassDomains';
export * from './xmlCdashClassField';
export * from './xmlCdashDomain';
export * from './xmlCdashDomainField';
export * from './xmlCdashDomainFields';
export * from './xmlCdashProduct';
export * from './xmlCdashProductClasses';
export * from './xmlCdashProductDomains';
export * from './xmlCdashigClass';
export * from './xmlCdashigClassDomains';
export * from './xmlCdashigClassScenarios';
export * from './xmlCdashigDomain';
export * from './xmlCdashigDomainField';
export * from './xmlCdashigDomainFields';
export * from './xmlCdashigProduct';
export * from './xmlCdashigProductClasses';
export * from './xmlCdashigProductDomains';
export * from './xmlCdashigProductScenarios';
export * from './xmlCdashigScenario';
export * from './xmlCdashigScenarioField';
export * from './xmlCdashigScenarioFields';
export * from './xmlCtCodelist';
export * from './xmlCtCodelistTerms';
export * from './xmlCtPackage';
export * from './xmlCtPackageCodelists';
export * from './xmlCtPackages';
export * from './xmlCtTerm';
export * from './xmlLastupdated';
export * from './xmlProductgroupDataAnalysis';
export * from './xmlProductgroupDataCollection';
export * from './xmlProductgroupDataTabulation';
export * from './xmlProductgroupTerminology';
export * from './xmlProducts';
export * from './xmlQrsItem';
export * from './xmlQrsItems';
export * from './xmlQrsProduct';
export * from './xmlQrsResponsegroup';
export * from './xmlQrsResponsegroups';
export * from './xmlRootCdashClassField';
export * from './xmlRootCdashDomainField';
export * from './xmlRootCdashigDomainField';
export * from './xmlRootCdashigScenarioField';
export * from './xmlRootCtCodelist';
export * from './xmlRootCtTerm';
export * from './xmlRootSdtmClassVariable';
export * from './xmlRootSdtmDatasetVariable';
export * from './xmlRootSdtmigDatasetVariable';
export * from './xmlRootSendigDatasetVariable';
export * from './xmlSdtmClass';
export * from './xmlSdtmClassDatasets';
export * from './xmlSdtmClassVariable';
export * from './xmlSdtmClassVariables';
export * from './xmlSdtmClasses';
export * from './xmlSdtmDataset';
export * from './xmlSdtmDatasetVariable';
export * from './xmlSdtmDatasetVariables';
export * from './xmlSdtmDatasets';
export * from './xmlSdtmProduct';
export * from './xmlSdtmigClass';
export * from './xmlSdtmigClassDatasets';
export * from './xmlSdtmigClasses';
export * from './xmlSdtmigDataset';
export * from './xmlSdtmigDatasetVariable';
export * from './xmlSdtmigDatasetVariables';
export * from './xmlSdtmigDatasets';
export * from './xmlSdtmigProduct';
export * from './xmlSendigClass';
export * from './xmlSendigClassDatasets';
export * from './xmlSendigClasses';
export * from './xmlSendigDataset';
export * from './xmlSendigDatasetVariable';
export * from './xmlSendigDatasetVariables';
export * from './xmlSendigDatasets';
export * from './xmlSendigProduct';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { About } from './about';
import { AboutLinks } from './aboutLinks';
import { AboutRef } from './aboutRef';
import { AdamDatastructure } from './adamDatastructure';
import { AdamDatastructureLinks } from './adamDatastructureLinks';
import { AdamDatastructureRef } from './adamDatastructureRef';
import { AdamDatastructureRefElement } from './adamDatastructureRefElement';
import { AdamDatastructureVariables } from './adamDatastructureVariables';
import { AdamDatastructureVariablesLinks } from './adamDatastructureVariablesLinks';
import { AdamDatastructureVariablesRef } from './adamDatastructureVariablesRef';
import { AdamDatastructureVarsets } from './adamDatastructureVarsets';
import { AdamDatastructureVarsetsLinks } from './adamDatastructureVarsetsLinks';
import { AdamDatastructureVarsetsRef } from './adamDatastructureVarsetsRef';
import { AdamProduct } from './adamProduct';
import { AdamProductDatastructures } from './adamProductDatastructures';
import { AdamProductDatastructuresLinks } from './adamProductDatastructuresLinks';
import { AdamProductDatastructuresRef } from './adamProductDatastructuresRef';
import { AdamProductLinks } from './adamProductLinks';
import { AdamProductRef } from './adamProductRef';
import { AdamProductRefElement } from './adamProductRefElement';
import { AdamVariable } from './adamVariable';
import { AdamVariableLinks } from './adamVariableLinks';
import { AdamVariableRef } from './adamVariableRef';
import { AdamVariableRefElement } from './adamVariableRefElement';
import { AdamVarset } from './adamVarset';
import { AdamVarsetLinks } from './adamVarsetLinks';
import { AdamVarsetRef } from './adamVarsetRef';
import { AdamVarsetRefElement } from './adamVarsetRefElement';
import { CdashClass } from './cdashClass';
import { CdashClassDomains } from './cdashClassDomains';
import { CdashClassDomainsLinks } from './cdashClassDomainsLinks';
import { CdashClassDomainsRef } from './cdashClassDomainsRef';
import { CdashClassField } from './cdashClassField';
import { CdashClassFieldLinks } from './cdashClassFieldLinks';
import { CdashClassFieldRef } from './cdashClassFieldRef';
import { CdashClassFieldRefVersion } from './cdashClassFieldRefVersion';
import { CdashClassLinks } from './cdashClassLinks';
import { CdashClassRef } from './cdashClassRef';
import { CdashClassRefElement } from './cdashClassRefElement';
import { CdashDomain } from './cdashDomain';
import { CdashDomainField } from './cdashDomainField';
import { CdashDomainFieldLinks } from './cdashDomainFieldLinks';
import { CdashDomainFieldRef } from './cdashDomainFieldRef';
import { CdashDomainFieldRefElement } from './cdashDomainFieldRefElement';
import { CdashDomainFieldRefVersion } from './cdashDomainFieldRefVersion';
import { CdashDomainFields } from './cdashDomainFields';
import { CdashDomainFieldsLinks } from './cdashDomainFieldsLinks';
import { CdashDomainFieldsRef } from './cdashDomainFieldsRef';
import { CdashDomainLinks } from './cdashDomainLinks';
import { CdashDomainRef } from './cdashDomainRef';
import { CdashDomainRefElement } from './cdashDomainRefElement';
import { CdashProduct } from './cdashProduct';
import { CdashProductClasses } from './cdashProductClasses';
import { CdashProductClassesLinks } from './cdashProductClassesLinks';
import { CdashProductClassesRef } from './cdashProductClassesRef';
import { CdashProductDomains } from './cdashProductDomains';
import { CdashProductDomainsLinks } from './cdashProductDomainsLinks';
import { CdashProductDomainsRef } from './cdashProductDomainsRef';
import { CdashProductLinks } from './cdashProductLinks';
import { CdashProductRef } from './cdashProductRef';
import { CdashProductRefElement } from './cdashProductRefElement';
import { CdashigClass } from './cdashigClass';
import { CdashigClassDomains } from './cdashigClassDomains';
import { CdashigClassDomainsLinks } from './cdashigClassDomainsLinks';
import { CdashigClassDomainsRef } from './cdashigClassDomainsRef';
import { CdashigClassLinks } from './cdashigClassLinks';
import { CdashigClassRef } from './cdashigClassRef';
import { CdashigClassRefElement } from './cdashigClassRefElement';
import { CdashigClassRefSubclass } from './cdashigClassRefSubclass';
import { CdashigClassScenarios } from './cdashigClassScenarios';
import { CdashigClassScenariosLinks } from './cdashigClassScenariosLinks';
import { CdashigClassScenariosRef } from './cdashigClassScenariosRef';
import { CdashigDomain } from './cdashigDomain';
import { CdashigDomainField } from './cdashigDomainField';
import { CdashigDomainFieldLinks } from './cdashigDomainFieldLinks';
import { CdashigDomainFieldRef } from './cdashigDomainFieldRef';
import { CdashigDomainFieldRefElement } from './cdashigDomainFieldRefElement';
import { CdashigDomainFieldRefVersion } from './cdashigDomainFieldRefVersion';
import { CdashigDomainFields } from './cdashigDomainFields';
import { CdashigDomainFieldsLinks } from './cdashigDomainFieldsLinks';
import { CdashigDomainFieldsRef } from './cdashigDomainFieldsRef';
import { CdashigDomainLinks } from './cdashigDomainLinks';
import { CdashigDomainRef } from './cdashigDomainRef';
import { CdashigDomainRefElement } from './cdashigDomainRefElement';
import { CdashigProduct } from './cdashigProduct';
import { CdashigProductClasses } from './cdashigProductClasses';
import { CdashigProductClassesLinks } from './cdashigProductClassesLinks';
import { CdashigProductClassesRef } from './cdashigProductClassesRef';
import { CdashigProductDomains } from './cdashigProductDomains';
import { CdashigProductDomainsLinks } from './cdashigProductDomainsLinks';
import { CdashigProductDomainsRef } from './cdashigProductDomainsRef';
import { CdashigProductLinks } from './cdashigProductLinks';
import { CdashigProductRef } from './cdashigProductRef';
import { CdashigProductRefElement } from './cdashigProductRefElement';
import { CdashigProductScenarios } from './cdashigProductScenarios';
import { CdashigProductScenariosLinks } from './cdashigProductScenariosLinks';
import { CdashigProductScenariosRef } from './cdashigProductScenariosRef';
import { CdashigScenario } from './cdashigScenario';
import { CdashigScenarioField } from './cdashigScenarioField';
import { CdashigScenarioFieldLinks } from './cdashigScenarioFieldLinks';
import { CdashigScenarioFieldRef } from './cdashigScenarioFieldRef';
import { CdashigScenarioFieldRefElement } from './cdashigScenarioFieldRefElement';
import { CdashigScenarioFieldRefVersion } from './cdashigScenarioFieldRefVersion';
import { CdashigScenarioFields } from './cdashigScenarioFields';
import { CdashigScenarioFieldsLinks } from './cdashigScenarioFieldsLinks';
import { CdashigScenarioFieldsRef } from './cdashigScenarioFieldsRef';
import { CdashigScenarioLinks } from './cdashigScenarioLinks';
import { CdashigScenarioRef } from './cdashigScenarioRef';
import { CdashigScenarioRefElement } from './cdashigScenarioRefElement';
import { CtCodelist } from './ctCodelist';
import { CtCodelistLinks } from './ctCodelistLinks';
import { CtCodelistRef } from './ctCodelistRef';
import { CtCodelistRefElement } from './ctCodelistRefElement';
import { CtCodelistRefVersion } from './ctCodelistRefVersion';
import { CtCodelistTerms } from './ctCodelistTerms';
import { CtCodelistTermsLinks } from './ctCodelistTermsLinks';
import { CtCodelistTermsRef } from './ctCodelistTermsRef';
import { CtPackage } from './ctPackage';
import { CtPackageCodelists } from './ctPackageCodelists';
import { CtPackageCodelistsLinks } from './ctPackageCodelistsLinks';
import { CtPackageCodelistsRef } from './ctPackageCodelistsRef';
import { CtPackageLinks } from './ctPackageLinks';
import { CtPackageRef } from './ctPackageRef';
import { CtPackageRefElement } from './ctPackageRefElement';
import { CtPackageTerm } from './ctPackageTerm';
import { CtPackages } from './ctPackages';
import { CtPackagesLinks } from './ctPackagesLinks';
import { CtPackagesRef } from './ctPackagesRef';
import { CtTerm } from './ctTerm';
import { CtTermLinks } from './ctTermLinks';
import { CtTermRef } from './ctTermRef';
import { CtTermRefElement } from './ctTermRefElement';
import { CtTermRefVersion } from './ctTermRefVersion';
import { DefaultErrorResponse } from './defaultErrorResponse';
import { DefaultSearchResponse } from './defaultSearchResponse';
import { DefaultSearchResponseHitsInner } from './defaultSearchResponseHitsInner';
import { DefaultSearchScopes } from './defaultSearchScopes';
import { ExportAdamDatastructuresRow } from './exportAdamDatastructuresRow';
import { ExportAdamDatastructuresTable } from './exportAdamDatastructuresTable';
import { ExportAdamVariablesRow } from './exportAdamVariablesRow';
import { ExportAdamVariablesTable } from './exportAdamVariablesTable';
import { ExportAdamWorkbook } from './exportAdamWorkbook';
import { ExportCdashClassVariablesRow } from './exportCdashClassVariablesRow';
import { ExportCdashDomainVariablesRow } from './exportCdashDomainVariablesRow';
import { ExportCdashTable } from './exportCdashTable';
import { ExportCdashigDomainVariablesRow } from './exportCdashigDomainVariablesRow';
import { ExportCdashigScenarioVariablesRow } from './exportCdashigScenarioVariablesRow';
import { ExportCdashigTable } from './exportCdashigTable';
import { ExportCtCodelist } from './exportCtCodelist';
import { ExportCtTable } from './exportCtTable';
import { ExportCtTerm } from './exportCtTerm';
import { ExportQrsCsvItemsRow } from './exportQrsCsvItemsRow';
import { ExportQrsGeneral } from './exportQrsGeneral';
import { ExportQrsItemsTable } from './exportQrsItemsTable';
import { ExportQrsResponses } from './exportQrsResponses';
import { ExportQrsWorkbook } from './exportQrsWorkbook';
import { ExportQrsWorkbookItemsRow } from './exportQrsWorkbookItemsRow';
import { ExportSdtmClassVariablesRow } from './exportSdtmClassVariablesRow';
import { ExportSdtmDatasetVariablesRow } from './exportSdtmDatasetVariablesRow';
import { ExportSdtmDatasetsRow } from './exportSdtmDatasetsRow';
import { ExportSdtmDatasetsTable } from './exportSdtmDatasetsTable';
import { ExportSdtmVariablesTable } from './exportSdtmVariablesTable';
import { ExportSdtmWorkbook } from './exportSdtmWorkbook';
import { ExportSdtmigDatasetsRow } from './exportSdtmigDatasetsRow';
import { ExportSdtmigDatasetsTable } from './exportSdtmigDatasetsTable';
import { ExportSdtmigVariablesRow } from './exportSdtmigVariablesRow';
import { ExportSdtmigVariablesTable } from './exportSdtmigVariablesTable';
import { ExportSdtmigWorkbook } from './exportSdtmigWorkbook';
import { ExportSendigDatasetsRow } from './exportSendigDatasetsRow';
import { ExportSendigDatasetsTable } from './exportSendigDatasetsTable';
import { ExportSendigVariablesRow } from './exportSendigVariablesRow';
import { ExportSendigVariablesTable } from './exportSendigVariablesTable';
import { ExportSendigWorkbook } from './exportSendigWorkbook';
import { Health } from './health';
import { Lastupdated } from './lastupdated';
import { LastupdatedLinks } from './lastupdatedLinks';
import { LastupdatedRef } from './lastupdatedRef';
import { MaintenanceBody } from './maintenanceBody';
import { MdrSearchScopesGet200Response } from './mdrSearchScopesGet200Response';
import { ProductgroupDataAnalysis } from './productgroupDataAnalysis';
import { ProductgroupDataAnalysisLinks } from './productgroupDataAnalysisLinks';
import { ProductgroupDataCollection } from './productgroupDataCollection';
import { ProductgroupDataCollectionLinks } from './productgroupDataCollectionLinks';
import { ProductgroupDataTabulation } from './productgroupDataTabulation';
import { ProductgroupDataTabulationLinks } from './productgroupDataTabulationLinks';
import { ProductgroupQrs } from './productgroupQrs';
import { ProductgroupQrsLinks } from './productgroupQrsLinks';
import { ProductgroupRef } from './productgroupRef';
import { ProductgroupTerminology } from './productgroupTerminology';
import { ProductgroupTerminologyLinks } from './productgroupTerminologyLinks';
import { Products } from './products';
import { ProductsLinks } from './productsLinks';
import { ProductsRef } from './productsRef';
import { QrsItem } from './qrsItem';
import { QrsItemLinks } from './qrsItemLinks';
import { QrsItemRefElement } from './qrsItemRefElement';
import { QrsItems } from './qrsItems';
import { QrsItemsLinks } from './qrsItemsLinks';
import { QrsItemsRef } from './qrsItemsRef';
import { QrsProduct } from './qrsProduct';
import { QrsProductLinks } from './qrsProductLinks';
import { QrsProductRef } from './qrsProductRef';
import { QrsRefElement } from './qrsRefElement';
import { QrsResponseLinks } from './qrsResponseLinks';
import { QrsResponsegroup } from './qrsResponsegroup';
import { QrsResponsegroupLinks } from './qrsResponsegroupLinks';
import { QrsResponsegroupRef } from './qrsResponsegroupRef';
import { QrsResponsegroupRefElement } from './qrsResponsegroupRefElement';
import { QrsResponsegroups } from './qrsResponsegroups';
import { QrsResponsegroupsLinks } from './qrsResponsegroupsLinks';
import { QrsResponsegroupsRef } from './qrsResponsegroupsRef';
import { QrsResponses } from './qrsResponses';
import { RootCdashClassField } from './rootCdashClassField';
import { RootCdashClassFieldLinks } from './rootCdashClassFieldLinks';
import { RootCdashClassFieldRef } from './rootCdashClassFieldRef';
import { RootCdashDomainField } from './rootCdashDomainField';
import { RootCdashDomainFieldLinks } from './rootCdashDomainFieldLinks';
import { RootCdashDomainFieldRef } from './rootCdashDomainFieldRef';
import { RootCdashigDomainField } from './rootCdashigDomainField';
import { RootCdashigDomainFieldLinks } from './rootCdashigDomainFieldLinks';
import { RootCdashigDomainFieldRef } from './rootCdashigDomainFieldRef';
import { RootCdashigScenarioField } from './rootCdashigScenarioField';
import { RootCdashigScenarioFieldLinks } from './rootCdashigScenarioFieldLinks';
import { RootCdashigScenarioFieldRef } from './rootCdashigScenarioFieldRef';
import { RootCtCodelist } from './rootCtCodelist';
import { RootCtCodelistLinks } from './rootCtCodelistLinks';
import { RootCtCodelistRef } from './rootCtCodelistRef';
import { RootCtCodelistRefElement } from './rootCtCodelistRefElement';
import { RootCtTerm } from './rootCtTerm';
import { RootCtTermLinks } from './rootCtTermLinks';
import { RootCtTermRef } from './rootCtTermRef';
import { RootSdtmClassVariable } from './rootSdtmClassVariable';
import { RootSdtmClassVariableLinks } from './rootSdtmClassVariableLinks';
import { RootSdtmClassVariableRef } from './rootSdtmClassVariableRef';
import { RootSdtmDatasetVariable } from './rootSdtmDatasetVariable';
import { RootSdtmDatasetVariableLinks } from './rootSdtmDatasetVariableLinks';
import { RootSdtmDatasetVariableRef } from './rootSdtmDatasetVariableRef';
import { RootSdtmigDatasetVariable } from './rootSdtmigDatasetVariable';
import { RootSdtmigDatasetVariableLinks } from './rootSdtmigDatasetVariableLinks';
import { RootSdtmigDatasetVariableRef } from './rootSdtmigDatasetVariableRef';
import { RootSendigDatasetVariable } from './rootSendigDatasetVariable';
import { RootSendigDatasetVariableLinks } from './rootSendigDatasetVariableLinks';
import { RootSendigDatasetVariableRef } from './rootSendigDatasetVariableRef';
import { ScopeValues } from './scopeValues';
import { SdtmClass } from './sdtmClass';
import { SdtmClassDatasets } from './sdtmClassDatasets';
import { SdtmClassDatasetsLinks } from './sdtmClassDatasetsLinks';
import { SdtmClassDatasetsRef } from './sdtmClassDatasetsRef';
import { SdtmClassLinks } from './sdtmClassLinks';
import { SdtmClassRef } from './sdtmClassRef';
import { SdtmClassRefElement } from './sdtmClassRefElement';
import { SdtmClassRefSubclass } from './sdtmClassRefSubclass';
import { SdtmClassVariable } from './sdtmClassVariable';
import { SdtmClassVariableLinks } from './sdtmClassVariableLinks';
import { SdtmClassVariableRef } from './sdtmClassVariableRef';
import { SdtmClassVariableRefElement } from './sdtmClassVariableRefElement';
import { SdtmClassVariableRefQualifies } from './sdtmClassVariableRefQualifies';
import { SdtmClassVariableRefTarget } from './sdtmClassVariableRefTarget';
import { SdtmClassVariableRefVersion } from './sdtmClassVariableRefVersion';
import { SdtmClassVariables } from './sdtmClassVariables';
import { SdtmClassVariablesLinks } from './sdtmClassVariablesLinks';
import { SdtmClassVariablesRef } from './sdtmClassVariablesRef';
import { SdtmClasses } from './sdtmClasses';
import { SdtmClassesLinks } from './sdtmClassesLinks';
import { SdtmClassesRef } from './sdtmClassesRef';
import { SdtmDataset } from './sdtmDataset';
import { SdtmDatasetLinks } from './sdtmDatasetLinks';
import { SdtmDatasetRef } from './sdtmDatasetRef';
import { SdtmDatasetRefElement } from './sdtmDatasetRefElement';
import { SdtmDatasetVariable } from './sdtmDatasetVariable';
import { SdtmDatasetVariableLinks } from './sdtmDatasetVariableLinks';
import { SdtmDatasetVariableRef } from './sdtmDatasetVariableRef';
import { SdtmDatasetVariableRefElement } from './sdtmDatasetVariableRefElement';
import { SdtmDatasetVariableRefTarget } from './sdtmDatasetVariableRefTarget';
import { SdtmDatasetVariableRefVersion } from './sdtmDatasetVariableRefVersion';
import { SdtmDatasetVariables } from './sdtmDatasetVariables';
import { SdtmDatasetVariablesLinks } from './sdtmDatasetVariablesLinks';
import { SdtmDatasetVariablesRef } from './sdtmDatasetVariablesRef';
import { SdtmDatasets } from './sdtmDatasets';
import { SdtmDatasetsLinks } from './sdtmDatasetsLinks';
import { SdtmDatasetsRef } from './sdtmDatasetsRef';
import { SdtmProduct } from './sdtmProduct';
import { SdtmProductLinks } from './sdtmProductLinks';
import { SdtmProductRef } from './sdtmProductRef';
import { SdtmProductRefElement } from './sdtmProductRefElement';
import { SdtmigClass } from './sdtmigClass';
import { SdtmigClassDatasets } from './sdtmigClassDatasets';
import { SdtmigClassDatasetsLinks } from './sdtmigClassDatasetsLinks';
import { SdtmigClassDatasetsRef } from './sdtmigClassDatasetsRef';
import { SdtmigClassLinks } from './sdtmigClassLinks';
import { SdtmigClassRef } from './sdtmigClassRef';
import { SdtmigClassRefElement } from './sdtmigClassRefElement';
import { SdtmigClassRefSubclass } from './sdtmigClassRefSubclass';
import { SdtmigClasses } from './sdtmigClasses';
import { SdtmigClassesLinks } from './sdtmigClassesLinks';
import { SdtmigClassesRef } from './sdtmigClassesRef';
import { SdtmigDataset } from './sdtmigDataset';
import { SdtmigDatasetLinks } from './sdtmigDatasetLinks';
import { SdtmigDatasetRef } from './sdtmigDatasetRef';
import { SdtmigDatasetRefElement } from './sdtmigDatasetRefElement';
import { SdtmigDatasetVariable } from './sdtmigDatasetVariable';
import { SdtmigDatasetVariableLinks } from './sdtmigDatasetVariableLinks';
import { SdtmigDatasetVariableRef } from './sdtmigDatasetVariableRef';
import { SdtmigDatasetVariableRefElement } from './sdtmigDatasetVariableRefElement';
import { SdtmigDatasetVariableRefTarget } from './sdtmigDatasetVariableRefTarget';
import { SdtmigDatasetVariableRefVersion } from './sdtmigDatasetVariableRefVersion';
import { SdtmigDatasetVariables } from './sdtmigDatasetVariables';
import { SdtmigDatasetVariablesLinks } from './sdtmigDatasetVariablesLinks';
import { SdtmigDatasetVariablesRef } from './sdtmigDatasetVariablesRef';
import { SdtmigDatasets } from './sdtmigDatasets';
import { SdtmigDatasetsLinks } from './sdtmigDatasetsLinks';
import { SdtmigDatasetsRef } from './sdtmigDatasetsRef';
import { SdtmigProduct } from './sdtmigProduct';
import { SdtmigProductLinks } from './sdtmigProductLinks';
import { SdtmigProductRef } from './sdtmigProductRef';
import { SdtmigProductRefElement } from './sdtmigProductRefElement';
import { SendigClass } from './sendigClass';
import { SendigClassDatasets } from './sendigClassDatasets';
import { SendigClassDatasetsLinks } from './sendigClassDatasetsLinks';
import { SendigClassDatasetsRef } from './sendigClassDatasetsRef';
import { SendigClassLinks } from './sendigClassLinks';
import { SendigClassRef } from './sendigClassRef';
import { SendigClassRefElement } from './sendigClassRefElement';
import { SendigClassRefSubclass } from './sendigClassRefSubclass';
import { SendigClasses } from './sendigClasses';
import { SendigClassesLinks } from './sendigClassesLinks';
import { SendigClassesRef } from './sendigClassesRef';
import { SendigDataset } from './sendigDataset';
import { SendigDatasetLinks } from './sendigDatasetLinks';
import { SendigDatasetRef } from './sendigDatasetRef';
import { SendigDatasetRefElement } from './sendigDatasetRefElement';
import { SendigDatasetVariable } from './sendigDatasetVariable';
import { SendigDatasetVariableLinks } from './sendigDatasetVariableLinks';
import { SendigDatasetVariableRef } from './sendigDatasetVariableRef';
import { SendigDatasetVariableRefElement } from './sendigDatasetVariableRefElement';
import { SendigDatasetVariableRefVersion } from './sendigDatasetVariableRefVersion';
import { SendigDatasetVariables } from './sendigDatasetVariables';
import { SendigDatasetVariablesLinks } from './sendigDatasetVariablesLinks';
import { SendigDatasetVariablesRef } from './sendigDatasetVariablesRef';
import { SendigDatasets } from './sendigDatasets';
import { SendigDatasetsLinks } from './sendigDatasetsLinks';
import { SendigDatasetsRef } from './sendigDatasetsRef';
import { SendigProduct } from './sendigProduct';
import { SendigProductLinks } from './sendigProductLinks';
import { SendigProductRef } from './sendigProductRef';
import { SendigProductRefElement } from './sendigProductRefElement';
import { XmlAbout } from './xmlAbout';
import { XmlAdamDatastructure } from './xmlAdamDatastructure';
import { XmlAdamDatastructureVariables } from './xmlAdamDatastructureVariables';
import { XmlAdamDatastructureVarsets } from './xmlAdamDatastructureVarsets';
import { XmlAdamProduct } from './xmlAdamProduct';
import { XmlAdamProductDatastructures } from './xmlAdamProductDatastructures';
import { XmlAdamVariable } from './xmlAdamVariable';
import { XmlAdamVarset } from './xmlAdamVarset';
import { XmlCdashClass } from './xmlCdashClass';
import { XmlCdashClassDomains } from './xmlCdashClassDomains';
import { XmlCdashClassField } from './xmlCdashClassField';
import { XmlCdashDomain } from './xmlCdashDomain';
import { XmlCdashDomainField } from './xmlCdashDomainField';
import { XmlCdashDomainFields } from './xmlCdashDomainFields';
import { XmlCdashProduct } from './xmlCdashProduct';
import { XmlCdashProductClasses } from './xmlCdashProductClasses';
import { XmlCdashProductDomains } from './xmlCdashProductDomains';
import { XmlCdashigClass } from './xmlCdashigClass';
import { XmlCdashigClassDomains } from './xmlCdashigClassDomains';
import { XmlCdashigClassScenarios } from './xmlCdashigClassScenarios';
import { XmlCdashigDomain } from './xmlCdashigDomain';
import { XmlCdashigDomainField } from './xmlCdashigDomainField';
import { XmlCdashigDomainFields } from './xmlCdashigDomainFields';
import { XmlCdashigProduct } from './xmlCdashigProduct';
import { XmlCdashigProductClasses } from './xmlCdashigProductClasses';
import { XmlCdashigProductDomains } from './xmlCdashigProductDomains';
import { XmlCdashigProductScenarios } from './xmlCdashigProductScenarios';
import { XmlCdashigScenario } from './xmlCdashigScenario';
import { XmlCdashigScenarioField } from './xmlCdashigScenarioField';
import { XmlCdashigScenarioFields } from './xmlCdashigScenarioFields';
import { XmlCtCodelist } from './xmlCtCodelist';
import { XmlCtCodelistTerms } from './xmlCtCodelistTerms';
import { XmlCtPackage } from './xmlCtPackage';
import { XmlCtPackageCodelists } from './xmlCtPackageCodelists';
import { XmlCtPackages } from './xmlCtPackages';
import { XmlCtTerm } from './xmlCtTerm';
import { XmlLastupdated } from './xmlLastupdated';
import { XmlProductgroupDataAnalysis } from './xmlProductgroupDataAnalysis';
import { XmlProductgroupDataCollection } from './xmlProductgroupDataCollection';
import { XmlProductgroupDataTabulation } from './xmlProductgroupDataTabulation';
import { XmlProductgroupTerminology } from './xmlProductgroupTerminology';
import { XmlProducts } from './xmlProducts';
import { XmlQrsItem } from './xmlQrsItem';
import { XmlQrsItems } from './xmlQrsItems';
import { XmlQrsProduct } from './xmlQrsProduct';
import { XmlQrsResponsegroup } from './xmlQrsResponsegroup';
import { XmlQrsResponsegroups } from './xmlQrsResponsegroups';
import { XmlRootCdashClassField } from './xmlRootCdashClassField';
import { XmlRootCdashDomainField } from './xmlRootCdashDomainField';
import { XmlRootCdashigDomainField } from './xmlRootCdashigDomainField';
import { XmlRootCdashigScenarioField } from './xmlRootCdashigScenarioField';
import { XmlRootCtCodelist } from './xmlRootCtCodelist';
import { XmlRootCtTerm } from './xmlRootCtTerm';
import { XmlRootSdtmClassVariable } from './xmlRootSdtmClassVariable';
import { XmlRootSdtmDatasetVariable } from './xmlRootSdtmDatasetVariable';
import { XmlRootSdtmigDatasetVariable } from './xmlRootSdtmigDatasetVariable';
import { XmlRootSendigDatasetVariable } from './xmlRootSendigDatasetVariable';
import { XmlSdtmClass } from './xmlSdtmClass';
import { XmlSdtmClassDatasets } from './xmlSdtmClassDatasets';
import { XmlSdtmClassVariable } from './xmlSdtmClassVariable';
import { XmlSdtmClassVariables } from './xmlSdtmClassVariables';
import { XmlSdtmClasses } from './xmlSdtmClasses';
import { XmlSdtmDataset } from './xmlSdtmDataset';
import { XmlSdtmDatasetVariable } from './xmlSdtmDatasetVariable';
import { XmlSdtmDatasetVariables } from './xmlSdtmDatasetVariables';
import { XmlSdtmDatasets } from './xmlSdtmDatasets';
import { XmlSdtmProduct } from './xmlSdtmProduct';
import { XmlSdtmigClass } from './xmlSdtmigClass';
import { XmlSdtmigClassDatasets } from './xmlSdtmigClassDatasets';
import { XmlSdtmigClasses } from './xmlSdtmigClasses';
import { XmlSdtmigDataset } from './xmlSdtmigDataset';
import { XmlSdtmigDatasetVariable } from './xmlSdtmigDatasetVariable';
import { XmlSdtmigDatasetVariables } from './xmlSdtmigDatasetVariables';
import { XmlSdtmigDatasets } from './xmlSdtmigDatasets';
import { XmlSdtmigProduct } from './xmlSdtmigProduct';
import { XmlSendigClass } from './xmlSendigClass';
import { XmlSendigClassDatasets } from './xmlSendigClassDatasets';
import { XmlSendigClasses } from './xmlSendigClasses';
import { XmlSendigDataset } from './xmlSendigDataset';
import { XmlSendigDatasetVariable } from './xmlSendigDatasetVariable';
import { XmlSendigDatasetVariables } from './xmlSendigDatasetVariables';
import { XmlSendigDatasets } from './xmlSendigDatasets';
import { XmlSendigProduct } from './xmlSendigProduct';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
        "DefaultSearchScopes": DefaultSearchScopes,
}

let typeMap: {[index: string]: any} = {
    "About": About,
    "AboutLinks": AboutLinks,
    "AboutRef": AboutRef,
    "AdamDatastructure": AdamDatastructure,
    "AdamDatastructureLinks": AdamDatastructureLinks,
    "AdamDatastructureRef": AdamDatastructureRef,
    "AdamDatastructureRefElement": AdamDatastructureRefElement,
    "AdamDatastructureVariables": AdamDatastructureVariables,
    "AdamDatastructureVariablesLinks": AdamDatastructureVariablesLinks,
    "AdamDatastructureVariablesRef": AdamDatastructureVariablesRef,
    "AdamDatastructureVarsets": AdamDatastructureVarsets,
    "AdamDatastructureVarsetsLinks": AdamDatastructureVarsetsLinks,
    "AdamDatastructureVarsetsRef": AdamDatastructureVarsetsRef,
    "AdamProduct": AdamProduct,
    "AdamProductDatastructures": AdamProductDatastructures,
    "AdamProductDatastructuresLinks": AdamProductDatastructuresLinks,
    "AdamProductDatastructuresRef": AdamProductDatastructuresRef,
    "AdamProductLinks": AdamProductLinks,
    "AdamProductRef": AdamProductRef,
    "AdamProductRefElement": AdamProductRefElement,
    "AdamVariable": AdamVariable,
    "AdamVariableLinks": AdamVariableLinks,
    "AdamVariableRef": AdamVariableRef,
    "AdamVariableRefElement": AdamVariableRefElement,
    "AdamVarset": AdamVarset,
    "AdamVarsetLinks": AdamVarsetLinks,
    "AdamVarsetRef": AdamVarsetRef,
    "AdamVarsetRefElement": AdamVarsetRefElement,
    "CdashClass": CdashClass,
    "CdashClassDomains": CdashClassDomains,
    "CdashClassDomainsLinks": CdashClassDomainsLinks,
    "CdashClassDomainsRef": CdashClassDomainsRef,
    "CdashClassField": CdashClassField,
    "CdashClassFieldLinks": CdashClassFieldLinks,
    "CdashClassFieldRef": CdashClassFieldRef,
    "CdashClassFieldRefVersion": CdashClassFieldRefVersion,
    "CdashClassLinks": CdashClassLinks,
    "CdashClassRef": CdashClassRef,
    "CdashClassRefElement": CdashClassRefElement,
    "CdashDomain": CdashDomain,
    "CdashDomainField": CdashDomainField,
    "CdashDomainFieldLinks": CdashDomainFieldLinks,
    "CdashDomainFieldRef": CdashDomainFieldRef,
    "CdashDomainFieldRefElement": CdashDomainFieldRefElement,
    "CdashDomainFieldRefVersion": CdashDomainFieldRefVersion,
    "CdashDomainFields": CdashDomainFields,
    "CdashDomainFieldsLinks": CdashDomainFieldsLinks,
    "CdashDomainFieldsRef": CdashDomainFieldsRef,
    "CdashDomainLinks": CdashDomainLinks,
    "CdashDomainRef": CdashDomainRef,
    "CdashDomainRefElement": CdashDomainRefElement,
    "CdashProduct": CdashProduct,
    "CdashProductClasses": CdashProductClasses,
    "CdashProductClassesLinks": CdashProductClassesLinks,
    "CdashProductClassesRef": CdashProductClassesRef,
    "CdashProductDomains": CdashProductDomains,
    "CdashProductDomainsLinks": CdashProductDomainsLinks,
    "CdashProductDomainsRef": CdashProductDomainsRef,
    "CdashProductLinks": CdashProductLinks,
    "CdashProductRef": CdashProductRef,
    "CdashProductRefElement": CdashProductRefElement,
    "CdashigClass": CdashigClass,
    "CdashigClassDomains": CdashigClassDomains,
    "CdashigClassDomainsLinks": CdashigClassDomainsLinks,
    "CdashigClassDomainsRef": CdashigClassDomainsRef,
    "CdashigClassLinks": CdashigClassLinks,
    "CdashigClassRef": CdashigClassRef,
    "CdashigClassRefElement": CdashigClassRefElement,
    "CdashigClassRefSubclass": CdashigClassRefSubclass,
    "CdashigClassScenarios": CdashigClassScenarios,
    "CdashigClassScenariosLinks": CdashigClassScenariosLinks,
    "CdashigClassScenariosRef": CdashigClassScenariosRef,
    "CdashigDomain": CdashigDomain,
    "CdashigDomainField": CdashigDomainField,
    "CdashigDomainFieldLinks": CdashigDomainFieldLinks,
    "CdashigDomainFieldRef": CdashigDomainFieldRef,
    "CdashigDomainFieldRefElement": CdashigDomainFieldRefElement,
    "CdashigDomainFieldRefVersion": CdashigDomainFieldRefVersion,
    "CdashigDomainFields": CdashigDomainFields,
    "CdashigDomainFieldsLinks": CdashigDomainFieldsLinks,
    "CdashigDomainFieldsRef": CdashigDomainFieldsRef,
    "CdashigDomainLinks": CdashigDomainLinks,
    "CdashigDomainRef": CdashigDomainRef,
    "CdashigDomainRefElement": CdashigDomainRefElement,
    "CdashigProduct": CdashigProduct,
    "CdashigProductClasses": CdashigProductClasses,
    "CdashigProductClassesLinks": CdashigProductClassesLinks,
    "CdashigProductClassesRef": CdashigProductClassesRef,
    "CdashigProductDomains": CdashigProductDomains,
    "CdashigProductDomainsLinks": CdashigProductDomainsLinks,
    "CdashigProductDomainsRef": CdashigProductDomainsRef,
    "CdashigProductLinks": CdashigProductLinks,
    "CdashigProductRef": CdashigProductRef,
    "CdashigProductRefElement": CdashigProductRefElement,
    "CdashigProductScenarios": CdashigProductScenarios,
    "CdashigProductScenariosLinks": CdashigProductScenariosLinks,
    "CdashigProductScenariosRef": CdashigProductScenariosRef,
    "CdashigScenario": CdashigScenario,
    "CdashigScenarioField": CdashigScenarioField,
    "CdashigScenarioFieldLinks": CdashigScenarioFieldLinks,
    "CdashigScenarioFieldRef": CdashigScenarioFieldRef,
    "CdashigScenarioFieldRefElement": CdashigScenarioFieldRefElement,
    "CdashigScenarioFieldRefVersion": CdashigScenarioFieldRefVersion,
    "CdashigScenarioFields": CdashigScenarioFields,
    "CdashigScenarioFieldsLinks": CdashigScenarioFieldsLinks,
    "CdashigScenarioFieldsRef": CdashigScenarioFieldsRef,
    "CdashigScenarioLinks": CdashigScenarioLinks,
    "CdashigScenarioRef": CdashigScenarioRef,
    "CdashigScenarioRefElement": CdashigScenarioRefElement,
    "CtCodelist": CtCodelist,
    "CtCodelistLinks": CtCodelistLinks,
    "CtCodelistRef": CtCodelistRef,
    "CtCodelistRefElement": CtCodelistRefElement,
    "CtCodelistRefVersion": CtCodelistRefVersion,
    "CtCodelistTerms": CtCodelistTerms,
    "CtCodelistTermsLinks": CtCodelistTermsLinks,
    "CtCodelistTermsRef": CtCodelistTermsRef,
    "CtPackage": CtPackage,
    "CtPackageCodelists": CtPackageCodelists,
    "CtPackageCodelistsLinks": CtPackageCodelistsLinks,
    "CtPackageCodelistsRef": CtPackageCodelistsRef,
    "CtPackageLinks": CtPackageLinks,
    "CtPackageRef": CtPackageRef,
    "CtPackageRefElement": CtPackageRefElement,
    "CtPackageTerm": CtPackageTerm,
    "CtPackages": CtPackages,
    "CtPackagesLinks": CtPackagesLinks,
    "CtPackagesRef": CtPackagesRef,
    "CtTerm": CtTerm,
    "CtTermLinks": CtTermLinks,
    "CtTermRef": CtTermRef,
    "CtTermRefElement": CtTermRefElement,
    "CtTermRefVersion": CtTermRefVersion,
    "DefaultErrorResponse": DefaultErrorResponse,
    "DefaultSearchResponse": DefaultSearchResponse,
    "DefaultSearchResponseHitsInner": DefaultSearchResponseHitsInner,
    "ExportAdamDatastructuresRow": ExportAdamDatastructuresRow,
    "ExportAdamDatastructuresTable": ExportAdamDatastructuresTable,
    "ExportAdamVariablesRow": ExportAdamVariablesRow,
    "ExportAdamVariablesTable": ExportAdamVariablesTable,
    "ExportAdamWorkbook": ExportAdamWorkbook,
    "ExportCdashClassVariablesRow": ExportCdashClassVariablesRow,
    "ExportCdashDomainVariablesRow": ExportCdashDomainVariablesRow,
    "ExportCdashTable": ExportCdashTable,
    "ExportCdashigDomainVariablesRow": ExportCdashigDomainVariablesRow,
    "ExportCdashigScenarioVariablesRow": ExportCdashigScenarioVariablesRow,
    "ExportCdashigTable": ExportCdashigTable,
    "ExportCtCodelist": ExportCtCodelist,
    "ExportCtTable": ExportCtTable,
    "ExportCtTerm": ExportCtTerm,
    "ExportQrsCsvItemsRow": ExportQrsCsvItemsRow,
    "ExportQrsGeneral": ExportQrsGeneral,
    "ExportQrsItemsTable": ExportQrsItemsTable,
    "ExportQrsResponses": ExportQrsResponses,
    "ExportQrsWorkbook": ExportQrsWorkbook,
    "ExportQrsWorkbookItemsRow": ExportQrsWorkbookItemsRow,
    "ExportSdtmClassVariablesRow": ExportSdtmClassVariablesRow,
    "ExportSdtmDatasetVariablesRow": ExportSdtmDatasetVariablesRow,
    "ExportSdtmDatasetsRow": ExportSdtmDatasetsRow,
    "ExportSdtmDatasetsTable": ExportSdtmDatasetsTable,
    "ExportSdtmVariablesTable": ExportSdtmVariablesTable,
    "ExportSdtmWorkbook": ExportSdtmWorkbook,
    "ExportSdtmigDatasetsRow": ExportSdtmigDatasetsRow,
    "ExportSdtmigDatasetsTable": ExportSdtmigDatasetsTable,
    "ExportSdtmigVariablesRow": ExportSdtmigVariablesRow,
    "ExportSdtmigVariablesTable": ExportSdtmigVariablesTable,
    "ExportSdtmigWorkbook": ExportSdtmigWorkbook,
    "ExportSendigDatasetsRow": ExportSendigDatasetsRow,
    "ExportSendigDatasetsTable": ExportSendigDatasetsTable,
    "ExportSendigVariablesRow": ExportSendigVariablesRow,
    "ExportSendigVariablesTable": ExportSendigVariablesTable,
    "ExportSendigWorkbook": ExportSendigWorkbook,
    "Health": Health,
    "Lastupdated": Lastupdated,
    "LastupdatedLinks": LastupdatedLinks,
    "LastupdatedRef": LastupdatedRef,
    "MaintenanceBody": MaintenanceBody,
    "MdrSearchScopesGet200Response": MdrSearchScopesGet200Response,
    "ProductgroupDataAnalysis": ProductgroupDataAnalysis,
    "ProductgroupDataAnalysisLinks": ProductgroupDataAnalysisLinks,
    "ProductgroupDataCollection": ProductgroupDataCollection,
    "ProductgroupDataCollectionLinks": ProductgroupDataCollectionLinks,
    "ProductgroupDataTabulation": ProductgroupDataTabulation,
    "ProductgroupDataTabulationLinks": ProductgroupDataTabulationLinks,
    "ProductgroupQrs": ProductgroupQrs,
    "ProductgroupQrsLinks": ProductgroupQrsLinks,
    "ProductgroupRef": ProductgroupRef,
    "ProductgroupTerminology": ProductgroupTerminology,
    "ProductgroupTerminologyLinks": ProductgroupTerminologyLinks,
    "Products": Products,
    "ProductsLinks": ProductsLinks,
    "ProductsRef": ProductsRef,
    "QrsItem": QrsItem,
    "QrsItemLinks": QrsItemLinks,
    "QrsItemRefElement": QrsItemRefElement,
    "QrsItems": QrsItems,
    "QrsItemsLinks": QrsItemsLinks,
    "QrsItemsRef": QrsItemsRef,
    "QrsProduct": QrsProduct,
    "QrsProductLinks": QrsProductLinks,
    "QrsProductRef": QrsProductRef,
    "QrsRefElement": QrsRefElement,
    "QrsResponseLinks": QrsResponseLinks,
    "QrsResponsegroup": QrsResponsegroup,
    "QrsResponsegroupLinks": QrsResponsegroupLinks,
    "QrsResponsegroupRef": QrsResponsegroupRef,
    "QrsResponsegroupRefElement": QrsResponsegroupRefElement,
    "QrsResponsegroups": QrsResponsegroups,
    "QrsResponsegroupsLinks": QrsResponsegroupsLinks,
    "QrsResponsegroupsRef": QrsResponsegroupsRef,
    "QrsResponses": QrsResponses,
    "RootCdashClassField": RootCdashClassField,
    "RootCdashClassFieldLinks": RootCdashClassFieldLinks,
    "RootCdashClassFieldRef": RootCdashClassFieldRef,
    "RootCdashDomainField": RootCdashDomainField,
    "RootCdashDomainFieldLinks": RootCdashDomainFieldLinks,
    "RootCdashDomainFieldRef": RootCdashDomainFieldRef,
    "RootCdashigDomainField": RootCdashigDomainField,
    "RootCdashigDomainFieldLinks": RootCdashigDomainFieldLinks,
    "RootCdashigDomainFieldRef": RootCdashigDomainFieldRef,
    "RootCdashigScenarioField": RootCdashigScenarioField,
    "RootCdashigScenarioFieldLinks": RootCdashigScenarioFieldLinks,
    "RootCdashigScenarioFieldRef": RootCdashigScenarioFieldRef,
    "RootCtCodelist": RootCtCodelist,
    "RootCtCodelistLinks": RootCtCodelistLinks,
    "RootCtCodelistRef": RootCtCodelistRef,
    "RootCtCodelistRefElement": RootCtCodelistRefElement,
    "RootCtTerm": RootCtTerm,
    "RootCtTermLinks": RootCtTermLinks,
    "RootCtTermRef": RootCtTermRef,
    "RootSdtmClassVariable": RootSdtmClassVariable,
    "RootSdtmClassVariableLinks": RootSdtmClassVariableLinks,
    "RootSdtmClassVariableRef": RootSdtmClassVariableRef,
    "RootSdtmDatasetVariable": RootSdtmDatasetVariable,
    "RootSdtmDatasetVariableLinks": RootSdtmDatasetVariableLinks,
    "RootSdtmDatasetVariableRef": RootSdtmDatasetVariableRef,
    "RootSdtmigDatasetVariable": RootSdtmigDatasetVariable,
    "RootSdtmigDatasetVariableLinks": RootSdtmigDatasetVariableLinks,
    "RootSdtmigDatasetVariableRef": RootSdtmigDatasetVariableRef,
    "RootSendigDatasetVariable": RootSendigDatasetVariable,
    "RootSendigDatasetVariableLinks": RootSendigDatasetVariableLinks,
    "RootSendigDatasetVariableRef": RootSendigDatasetVariableRef,
    "ScopeValues": ScopeValues,
    "SdtmClass": SdtmClass,
    "SdtmClassDatasets": SdtmClassDatasets,
    "SdtmClassDatasetsLinks": SdtmClassDatasetsLinks,
    "SdtmClassDatasetsRef": SdtmClassDatasetsRef,
    "SdtmClassLinks": SdtmClassLinks,
    "SdtmClassRef": SdtmClassRef,
    "SdtmClassRefElement": SdtmClassRefElement,
    "SdtmClassRefSubclass": SdtmClassRefSubclass,
    "SdtmClassVariable": SdtmClassVariable,
    "SdtmClassVariableLinks": SdtmClassVariableLinks,
    "SdtmClassVariableRef": SdtmClassVariableRef,
    "SdtmClassVariableRefElement": SdtmClassVariableRefElement,
    "SdtmClassVariableRefQualifies": SdtmClassVariableRefQualifies,
    "SdtmClassVariableRefTarget": SdtmClassVariableRefTarget,
    "SdtmClassVariableRefVersion": SdtmClassVariableRefVersion,
    "SdtmClassVariables": SdtmClassVariables,
    "SdtmClassVariablesLinks": SdtmClassVariablesLinks,
    "SdtmClassVariablesRef": SdtmClassVariablesRef,
    "SdtmClasses": SdtmClasses,
    "SdtmClassesLinks": SdtmClassesLinks,
    "SdtmClassesRef": SdtmClassesRef,
    "SdtmDataset": SdtmDataset,
    "SdtmDatasetLinks": SdtmDatasetLinks,
    "SdtmDatasetRef": SdtmDatasetRef,
    "SdtmDatasetRefElement": SdtmDatasetRefElement,
    "SdtmDatasetVariable": SdtmDatasetVariable,
    "SdtmDatasetVariableLinks": SdtmDatasetVariableLinks,
    "SdtmDatasetVariableRef": SdtmDatasetVariableRef,
    "SdtmDatasetVariableRefElement": SdtmDatasetVariableRefElement,
    "SdtmDatasetVariableRefTarget": SdtmDatasetVariableRefTarget,
    "SdtmDatasetVariableRefVersion": SdtmDatasetVariableRefVersion,
    "SdtmDatasetVariables": SdtmDatasetVariables,
    "SdtmDatasetVariablesLinks": SdtmDatasetVariablesLinks,
    "SdtmDatasetVariablesRef": SdtmDatasetVariablesRef,
    "SdtmDatasets": SdtmDatasets,
    "SdtmDatasetsLinks": SdtmDatasetsLinks,
    "SdtmDatasetsRef": SdtmDatasetsRef,
    "SdtmProduct": SdtmProduct,
    "SdtmProductLinks": SdtmProductLinks,
    "SdtmProductRef": SdtmProductRef,
    "SdtmProductRefElement": SdtmProductRefElement,
    "SdtmigClass": SdtmigClass,
    "SdtmigClassDatasets": SdtmigClassDatasets,
    "SdtmigClassDatasetsLinks": SdtmigClassDatasetsLinks,
    "SdtmigClassDatasetsRef": SdtmigClassDatasetsRef,
    "SdtmigClassLinks": SdtmigClassLinks,
    "SdtmigClassRef": SdtmigClassRef,
    "SdtmigClassRefElement": SdtmigClassRefElement,
    "SdtmigClassRefSubclass": SdtmigClassRefSubclass,
    "SdtmigClasses": SdtmigClasses,
    "SdtmigClassesLinks": SdtmigClassesLinks,
    "SdtmigClassesRef": SdtmigClassesRef,
    "SdtmigDataset": SdtmigDataset,
    "SdtmigDatasetLinks": SdtmigDatasetLinks,
    "SdtmigDatasetRef": SdtmigDatasetRef,
    "SdtmigDatasetRefElement": SdtmigDatasetRefElement,
    "SdtmigDatasetVariable": SdtmigDatasetVariable,
    "SdtmigDatasetVariableLinks": SdtmigDatasetVariableLinks,
    "SdtmigDatasetVariableRef": SdtmigDatasetVariableRef,
    "SdtmigDatasetVariableRefElement": SdtmigDatasetVariableRefElement,
    "SdtmigDatasetVariableRefTarget": SdtmigDatasetVariableRefTarget,
    "SdtmigDatasetVariableRefVersion": SdtmigDatasetVariableRefVersion,
    "SdtmigDatasetVariables": SdtmigDatasetVariables,
    "SdtmigDatasetVariablesLinks": SdtmigDatasetVariablesLinks,
    "SdtmigDatasetVariablesRef": SdtmigDatasetVariablesRef,
    "SdtmigDatasets": SdtmigDatasets,
    "SdtmigDatasetsLinks": SdtmigDatasetsLinks,
    "SdtmigDatasetsRef": SdtmigDatasetsRef,
    "SdtmigProduct": SdtmigProduct,
    "SdtmigProductLinks": SdtmigProductLinks,
    "SdtmigProductRef": SdtmigProductRef,
    "SdtmigProductRefElement": SdtmigProductRefElement,
    "SendigClass": SendigClass,
    "SendigClassDatasets": SendigClassDatasets,
    "SendigClassDatasetsLinks": SendigClassDatasetsLinks,
    "SendigClassDatasetsRef": SendigClassDatasetsRef,
    "SendigClassLinks": SendigClassLinks,
    "SendigClassRef": SendigClassRef,
    "SendigClassRefElement": SendigClassRefElement,
    "SendigClassRefSubclass": SendigClassRefSubclass,
    "SendigClasses": SendigClasses,
    "SendigClassesLinks": SendigClassesLinks,
    "SendigClassesRef": SendigClassesRef,
    "SendigDataset": SendigDataset,
    "SendigDatasetLinks": SendigDatasetLinks,
    "SendigDatasetRef": SendigDatasetRef,
    "SendigDatasetRefElement": SendigDatasetRefElement,
    "SendigDatasetVariable": SendigDatasetVariable,
    "SendigDatasetVariableLinks": SendigDatasetVariableLinks,
    "SendigDatasetVariableRef": SendigDatasetVariableRef,
    "SendigDatasetVariableRefElement": SendigDatasetVariableRefElement,
    "SendigDatasetVariableRefVersion": SendigDatasetVariableRefVersion,
    "SendigDatasetVariables": SendigDatasetVariables,
    "SendigDatasetVariablesLinks": SendigDatasetVariablesLinks,
    "SendigDatasetVariablesRef": SendigDatasetVariablesRef,
    "SendigDatasets": SendigDatasets,
    "SendigDatasetsLinks": SendigDatasetsLinks,
    "SendigDatasetsRef": SendigDatasetsRef,
    "SendigProduct": SendigProduct,
    "SendigProductLinks": SendigProductLinks,
    "SendigProductRef": SendigProductRef,
    "SendigProductRefElement": SendigProductRefElement,
    "XmlAbout": XmlAbout,
    "XmlAdamDatastructure": XmlAdamDatastructure,
    "XmlAdamDatastructureVariables": XmlAdamDatastructureVariables,
    "XmlAdamDatastructureVarsets": XmlAdamDatastructureVarsets,
    "XmlAdamProduct": XmlAdamProduct,
    "XmlAdamProductDatastructures": XmlAdamProductDatastructures,
    "XmlAdamVariable": XmlAdamVariable,
    "XmlAdamVarset": XmlAdamVarset,
    "XmlCdashClass": XmlCdashClass,
    "XmlCdashClassDomains": XmlCdashClassDomains,
    "XmlCdashClassField": XmlCdashClassField,
    "XmlCdashDomain": XmlCdashDomain,
    "XmlCdashDomainField": XmlCdashDomainField,
    "XmlCdashDomainFields": XmlCdashDomainFields,
    "XmlCdashProduct": XmlCdashProduct,
    "XmlCdashProductClasses": XmlCdashProductClasses,
    "XmlCdashProductDomains": XmlCdashProductDomains,
    "XmlCdashigClass": XmlCdashigClass,
    "XmlCdashigClassDomains": XmlCdashigClassDomains,
    "XmlCdashigClassScenarios": XmlCdashigClassScenarios,
    "XmlCdashigDomain": XmlCdashigDomain,
    "XmlCdashigDomainField": XmlCdashigDomainField,
    "XmlCdashigDomainFields": XmlCdashigDomainFields,
    "XmlCdashigProduct": XmlCdashigProduct,
    "XmlCdashigProductClasses": XmlCdashigProductClasses,
    "XmlCdashigProductDomains": XmlCdashigProductDomains,
    "XmlCdashigProductScenarios": XmlCdashigProductScenarios,
    "XmlCdashigScenario": XmlCdashigScenario,
    "XmlCdashigScenarioField": XmlCdashigScenarioField,
    "XmlCdashigScenarioFields": XmlCdashigScenarioFields,
    "XmlCtCodelist": XmlCtCodelist,
    "XmlCtCodelistTerms": XmlCtCodelistTerms,
    "XmlCtPackage": XmlCtPackage,
    "XmlCtPackageCodelists": XmlCtPackageCodelists,
    "XmlCtPackages": XmlCtPackages,
    "XmlCtTerm": XmlCtTerm,
    "XmlLastupdated": XmlLastupdated,
    "XmlProductgroupDataAnalysis": XmlProductgroupDataAnalysis,
    "XmlProductgroupDataCollection": XmlProductgroupDataCollection,
    "XmlProductgroupDataTabulation": XmlProductgroupDataTabulation,
    "XmlProductgroupTerminology": XmlProductgroupTerminology,
    "XmlProducts": XmlProducts,
    "XmlQrsItem": XmlQrsItem,
    "XmlQrsItems": XmlQrsItems,
    "XmlQrsProduct": XmlQrsProduct,
    "XmlQrsResponsegroup": XmlQrsResponsegroup,
    "XmlQrsResponsegroups": XmlQrsResponsegroups,
    "XmlRootCdashClassField": XmlRootCdashClassField,
    "XmlRootCdashDomainField": XmlRootCdashDomainField,
    "XmlRootCdashigDomainField": XmlRootCdashigDomainField,
    "XmlRootCdashigScenarioField": XmlRootCdashigScenarioField,
    "XmlRootCtCodelist": XmlRootCtCodelist,
    "XmlRootCtTerm": XmlRootCtTerm,
    "XmlRootSdtmClassVariable": XmlRootSdtmClassVariable,
    "XmlRootSdtmDatasetVariable": XmlRootSdtmDatasetVariable,
    "XmlRootSdtmigDatasetVariable": XmlRootSdtmigDatasetVariable,
    "XmlRootSendigDatasetVariable": XmlRootSendigDatasetVariable,
    "XmlSdtmClass": XmlSdtmClass,
    "XmlSdtmClassDatasets": XmlSdtmClassDatasets,
    "XmlSdtmClassVariable": XmlSdtmClassVariable,
    "XmlSdtmClassVariables": XmlSdtmClassVariables,
    "XmlSdtmClasses": XmlSdtmClasses,
    "XmlSdtmDataset": XmlSdtmDataset,
    "XmlSdtmDatasetVariable": XmlSdtmDatasetVariable,
    "XmlSdtmDatasetVariables": XmlSdtmDatasetVariables,
    "XmlSdtmDatasets": XmlSdtmDatasets,
    "XmlSdtmProduct": XmlSdtmProduct,
    "XmlSdtmigClass": XmlSdtmigClass,
    "XmlSdtmigClassDatasets": XmlSdtmigClassDatasets,
    "XmlSdtmigClasses": XmlSdtmigClasses,
    "XmlSdtmigDataset": XmlSdtmigDataset,
    "XmlSdtmigDatasetVariable": XmlSdtmigDatasetVariable,
    "XmlSdtmigDatasetVariables": XmlSdtmigDatasetVariables,
    "XmlSdtmigDatasets": XmlSdtmigDatasets,
    "XmlSdtmigProduct": XmlSdtmigProduct,
    "XmlSendigClass": XmlSendigClass,
    "XmlSendigClassDatasets": XmlSendigClassDatasets,
    "XmlSendigClasses": XmlSendigClasses,
    "XmlSendigDataset": XmlSendigDataset,
    "XmlSendigDatasetVariable": XmlSendigDatasetVariable,
    "XmlSendigDatasetVariables": XmlSendigDatasetVariables,
    "XmlSendigDatasets": XmlSendigDatasets,
    "XmlSendigProduct": XmlSendigProduct,
}

// Check if a string starts with another string without using es6 features
function startsWith(str: string, match: string): boolean {
    return str.substring(0, match.length) === match;
}

// Check if a string ends with another string without using es6 features
function endsWith(str: string, match: string): boolean {
    return str.length >= match.length && str.substring(str.length - match.length) === match;
}

const nullableSuffix = " | null";
const optionalSuffix = " | undefined";
const arrayPrefix = "Array<";
const arraySuffix = ">";
const mapPrefix = "{ [key: string]: ";
const mapSuffix = "; }";

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string): any {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.serialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string): any {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.deserialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);

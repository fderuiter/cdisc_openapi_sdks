#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.16.0-SNAPSHOT
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for CDISC Library API.
#
# LICENSE:
# https://www.cdisc.org/cdisc-library/api-account-request
#
# CONTACT:
# cdisc_library_support@cdisc.org
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureGet:::structure"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVariablesGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVariablesGet:::structure"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::structure"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVarsetsGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVarsetsGet:::structure"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::product"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::structure"]=1
operation_parameters_minimum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::varset"]=1
operation_parameters_minimum_occurrences["mdrAdamProductGet:::product"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassDomainsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassDomainsGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassScenariosGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesClassScenariosGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionClassesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainFieldsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainFieldsGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsDomainGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionDomainsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::scenario"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::scenario"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::scenario"]=1
operation_parameters_minimum_occurrences["mdrCdashigVersionScenariosGet:::version"]=1
operation_parameters_minimum_occurrences["mdrRootCdashigDomainsDomainFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrRootCdashigDomainsDomainFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::scenario"]=1
operation_parameters_minimum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassDomainsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassDomainsGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesClassGet:::class"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionClassesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainFieldsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainFieldsGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsDomainGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionDomainsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrCdashVersionGet:::version"]=1
operation_parameters_minimum_occurrences["mdrRootCdashClassesClassFieldsFieldGet:::class"]=1
operation_parameters_minimum_occurrences["mdrRootCdashClassesClassFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrRootCdashDomainsDomainFieldsFieldGet:::domain"]=1
operation_parameters_minimum_occurrences["mdrRootCdashDomainsDomainFieldsFieldGet:::field"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistGet:::package"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistGet:::codelist"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsGet:::package"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsGet:::codelist"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::package"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::codelist"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::term"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesPackageCodelistsGet:::package"]=1
operation_parameters_minimum_occurrences["mdrCtPackagesProductGet:::product"]=1
operation_parameters_minimum_occurrences["mdrRootCtProductGroupCodelistsCodelistGet:::productGroup"]=1
operation_parameters_minimum_occurrences["mdrRootCtProductGroupCodelistsCodelistGet:::codelist"]=1
operation_parameters_minimum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::productGroup"]=1
operation_parameters_minimum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::codelist"]=1
operation_parameters_minimum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::term"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionGet:::measure"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionGet:::version"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionItemsGet:::measure"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionItemsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionItemsItemGet:::measure"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionItemsItemGet:::version"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionItemsItemGet:::item"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionResponsegroupsGet:::measure"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionResponsegroupsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::measure"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::version"]=1
operation_parameters_minimum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::responsegroup"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionClassesClassDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionClassesClassDatasetsGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionClassesClassGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionClassesClassGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionClassesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmigVersionGet:::version"]=1
operation_parameters_minimum_occurrences["mdrRootSendigDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrRootSendigDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionClassesClassDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionClassesClassDatasetsGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionClassesClassGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionClassesClassGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionClassesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetVariablesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetVariablesGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSendigVersionGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSearchGet:::q"]=1
operation_parameters_minimum_occurrences["mdrSearchGet:::highlight"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::start"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::pageSize"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::class"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::codelist"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::conceptId"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::core"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::dataStructure"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::datasetStructure"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::definition"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::description"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::domain"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::effectiveDate"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::extensible"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::href"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::label"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::measureType"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::name"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::preferredTerm"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::product"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::productGroup"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::registrationStatus"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::roleDescription"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::sdtmTarget"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::simpleDatatype"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::submissionValue"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::synonyms"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::type"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::uiHref"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::valueDomain"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::variableSet"]=0
operation_parameters_minimum_occurrences["mdrSearchGet:::version"]=0
operation_parameters_minimum_occurrences["mdrSearchScopesScopeGet:::scope"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmClassesClassVariablesVarGet:::class"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmClassesClassVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrRootSdtmDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassDatasetsGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassVariablesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassVariablesGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::class"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionClassesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::dataset"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::var"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionDatasetsGet:::version"]=1
operation_parameters_minimum_occurrences["mdrSdtmVersionGet:::version"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureGet:::structure"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVariablesGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVariablesGet:::structure"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::structure"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVarsetsGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVarsetsGet:::structure"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::product"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::structure"]=0
operation_parameters_maximum_occurrences["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::varset"]=0
operation_parameters_maximum_occurrences["mdrAdamProductGet:::product"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassDomainsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassDomainsGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassScenariosGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesClassScenariosGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionClassesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainFieldsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainFieldsGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsDomainGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionDomainsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::scenario"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::scenario"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosDomainScenarioGet:::scenario"]=0
operation_parameters_maximum_occurrences["mdrCdashigVersionScenariosGet:::version"]=0
operation_parameters_maximum_occurrences["mdrRootCdashigDomainsDomainFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrRootCdashigDomainsDomainFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::scenario"]=0
operation_parameters_maximum_occurrences["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassDomainsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassDomainsGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesClassGet:::class"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionClassesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainFieldsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainFieldsGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsDomainGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionDomainsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrCdashVersionGet:::version"]=0
operation_parameters_maximum_occurrences["mdrRootCdashClassesClassFieldsFieldGet:::class"]=0
operation_parameters_maximum_occurrences["mdrRootCdashClassesClassFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrRootCdashDomainsDomainFieldsFieldGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrRootCdashDomainsDomainFieldsFieldGet:::field"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistGet:::package"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsGet:::package"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::package"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::term"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesPackageCodelistsGet:::package"]=0
operation_parameters_maximum_occurrences["mdrCtPackagesProductGet:::product"]=0
operation_parameters_maximum_occurrences["mdrRootCtProductGroupCodelistsCodelistGet:::productGroup"]=0
operation_parameters_maximum_occurrences["mdrRootCtProductGroupCodelistsCodelistGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::productGroup"]=0
operation_parameters_maximum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::term"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionGet:::measure"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionGet:::version"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionItemsGet:::measure"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionItemsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionItemsItemGet:::measure"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionItemsItemGet:::version"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionItemsItemGet:::item"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionResponsegroupsGet:::measure"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionResponsegroupsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::measure"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::version"]=0
operation_parameters_maximum_occurrences["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::responsegroup"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionClassesClassDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionClassesClassDatasetsGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionClassesClassGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionClassesClassGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionClassesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmigVersionGet:::version"]=0
operation_parameters_maximum_occurrences["mdrRootSendigDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrRootSendigDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionClassesClassDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionClassesClassDatasetsGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionClassesClassGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionClassesClassGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionClassesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetVariablesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetVariablesGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSendigVersionGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::q"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::highlight"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::start"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::pageSize"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::codelist"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::conceptId"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::core"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::dataStructure"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::datasetStructure"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::definition"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::description"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::domain"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::effectiveDate"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::extensible"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::href"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::label"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::measureType"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::name"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::preferredTerm"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::product"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::productGroup"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::registrationStatus"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::roleDescription"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::sdtmTarget"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::simpleDatatype"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::submissionValue"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::synonyms"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::type"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::uiHref"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::valueDomain"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::variableSet"]=0
operation_parameters_maximum_occurrences["mdrSearchGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSearchScopesScopeGet:::scope"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmClassesClassVariablesVarGet:::class"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmClassesClassVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrRootSdtmDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassDatasetsGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassVariablesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassVariablesGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::class"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesClassVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionClassesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::dataset"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::var"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionDatasetsGet:::version"]=0
operation_parameters_maximum_occurrences["mdrSdtmVersionGet:::version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["mdrAdamProductDatastructuresGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureGet:::structure"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVariablesGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVariablesGet:::structure"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVariablesVarGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVariablesVarGet:::structure"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVarsetsGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVarsetsGet:::structure"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::product"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::structure"]=""
operation_parameters_collection_type["mdrAdamProductDatastructuresStructureVarsetsVarsetGet:::varset"]=""
operation_parameters_collection_type["mdrAdamProductGet:::product"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassDomainsGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassDomainsGet:::class"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassGet:::class"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassScenariosGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesClassScenariosGet:::class"]=""
operation_parameters_collection_type["mdrCdashigVersionClassesGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainFieldsFieldGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainFieldsGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainFieldsGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsDomainGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionDomainsGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::scenario"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioFieldsGet:::scenario"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioGet:::version"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioGet:::domain"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosDomainScenarioGet:::scenario"]=""
operation_parameters_collection_type["mdrCdashigVersionScenariosGet:::version"]=""
operation_parameters_collection_type["mdrRootCdashigDomainsDomainFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrRootCdashigDomainsDomainFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::scenario"]=""
operation_parameters_collection_type["mdrRootCdashigScenariosDomainScenarioFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassDomainsGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassDomainsGet:::class"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassFieldsFieldGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassFieldsFieldGet:::class"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionClassesClassGet:::class"]=""
operation_parameters_collection_type["mdrCdashVersionClassesGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainFieldsFieldGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainFieldsGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainFieldsGet:::domain"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsDomainGet:::domain"]=""
operation_parameters_collection_type["mdrCdashVersionDomainsGet:::version"]=""
operation_parameters_collection_type["mdrCdashVersionGet:::version"]=""
operation_parameters_collection_type["mdrRootCdashClassesClassFieldsFieldGet:::class"]=""
operation_parameters_collection_type["mdrRootCdashClassesClassFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrRootCdashDomainsDomainFieldsFieldGet:::domain"]=""
operation_parameters_collection_type["mdrRootCdashDomainsDomainFieldsFieldGet:::field"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistGet:::package"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistGet:::codelist"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistTermsGet:::package"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistTermsGet:::codelist"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::package"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::codelist"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsCodelistTermsTermGet:::term"]=""
operation_parameters_collection_type["mdrCtPackagesPackageCodelistsGet:::package"]=""
operation_parameters_collection_type["mdrCtPackagesProductGet:::product"]=""
operation_parameters_collection_type["mdrRootCtProductGroupCodelistsCodelistGet:::productGroup"]=""
operation_parameters_collection_type["mdrRootCtProductGroupCodelistsCodelistGet:::codelist"]=""
operation_parameters_collection_type["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::productGroup"]=""
operation_parameters_collection_type["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::codelist"]=""
operation_parameters_collection_type["mdrRootCtProductGroupCodelistsCodelistTermsTermGet:::term"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionGet:::measure"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionGet:::version"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionItemsGet:::measure"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionItemsGet:::version"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionItemsItemGet:::measure"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionItemsItemGet:::version"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionItemsItemGet:::item"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionResponsegroupsGet:::measure"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionResponsegroupsGet:::version"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::measure"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::version"]=""
operation_parameters_collection_type["mdrQrsMeasureVersionResponsegroupsResponsegroupGet:::responsegroup"]=""
operation_parameters_collection_type["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrRootSdtmigDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSdtmigVersionClassesClassDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionClassesClassDatasetsGet:::class"]=""
operation_parameters_collection_type["mdrSdtmigVersionClassesClassGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionClassesClassGet:::class"]=""
operation_parameters_collection_type["mdrSdtmigVersionClassesGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetVariablesGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetVariablesGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSdtmigVersionDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSdtmigVersionGet:::version"]=""
operation_parameters_collection_type["mdrRootSendigDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrRootSendigDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSendigVersionClassesClassDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionClassesClassDatasetsGet:::class"]=""
operation_parameters_collection_type["mdrSendigVersionClassesClassGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionClassesClassGet:::class"]=""
operation_parameters_collection_type["mdrSendigVersionClassesGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetGet:::dataset"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetVariablesGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetVariablesGet:::dataset"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetVariablesVarGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSendigVersionDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSendigVersionGet:::version"]=""
operation_parameters_collection_type["mdrSearchGet:::q"]=""
operation_parameters_collection_type["mdrSearchGet:::highlight"]=""
operation_parameters_collection_type["mdrSearchGet:::start"]=""
operation_parameters_collection_type["mdrSearchGet:::pageSize"]=""
operation_parameters_collection_type["mdrSearchGet:::class"]=""
operation_parameters_collection_type["mdrSearchGet:::codelist"]=""
operation_parameters_collection_type["mdrSearchGet:::conceptId"]=""
operation_parameters_collection_type["mdrSearchGet:::core"]=""
operation_parameters_collection_type["mdrSearchGet:::dataStructure"]=""
operation_parameters_collection_type["mdrSearchGet:::datasetStructure"]=""
operation_parameters_collection_type["mdrSearchGet:::definition"]=""
operation_parameters_collection_type["mdrSearchGet:::description"]=""
operation_parameters_collection_type["mdrSearchGet:::domain"]=""
operation_parameters_collection_type["mdrSearchGet:::effectiveDate"]=""
operation_parameters_collection_type["mdrSearchGet:::extensible"]=""
operation_parameters_collection_type["mdrSearchGet:::href"]=""
operation_parameters_collection_type["mdrSearchGet:::label"]=""
operation_parameters_collection_type["mdrSearchGet:::measureType"]=""
operation_parameters_collection_type["mdrSearchGet:::name"]=""
operation_parameters_collection_type["mdrSearchGet:::preferredTerm"]=""
operation_parameters_collection_type["mdrSearchGet:::product"]=""
operation_parameters_collection_type["mdrSearchGet:::productGroup"]=""
operation_parameters_collection_type["mdrSearchGet:::registrationStatus"]=""
operation_parameters_collection_type["mdrSearchGet:::roleDescription"]=""
operation_parameters_collection_type["mdrSearchGet:::sdtmTarget"]=""
operation_parameters_collection_type["mdrSearchGet:::simpleDatatype"]=""
operation_parameters_collection_type["mdrSearchGet:::submissionValue"]=""
operation_parameters_collection_type["mdrSearchGet:::synonyms"]=""
operation_parameters_collection_type["mdrSearchGet:::type"]=""
operation_parameters_collection_type["mdrSearchGet:::uiHref"]=""
operation_parameters_collection_type["mdrSearchGet:::valueDomain"]=""
operation_parameters_collection_type["mdrSearchGet:::variableSet"]=""
operation_parameters_collection_type["mdrSearchGet:::version"]=""
operation_parameters_collection_type["mdrSearchScopesScopeGet:::scope"]=""
operation_parameters_collection_type["mdrRootSdtmClassesClassVariablesVarGet:::class"]=""
operation_parameters_collection_type["mdrRootSdtmClassesClassVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrRootSdtmDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrRootSdtmDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassDatasetsGet:::class"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassGet:::class"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassVariablesGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassVariablesGet:::class"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassVariablesVarGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassVariablesVarGet:::class"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesClassVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSdtmVersionClassesGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetVariablesGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetVariablesGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::dataset"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsDatasetVariablesVarGet:::var"]=""
operation_parameters_collection_type["mdrSdtmVersionDatasetsGet:::version"]=""
operation_parameters_collection_type["mdrSdtmVersionGet:::version"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}CDISC Library API command line client (API version 1.1.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Basic AUTH${OFF} - add '-u <username>:<password>' before ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[analysisDataModelAndImplementationGuideADaMAndADaMIG]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrAdamProductDatastructuresGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductDatastructuresStructureGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductDatastructuresStructureVariablesGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductDatastructuresStructureVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductDatastructuresStructureVarsetsGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductDatastructuresStructureVarsetsVarsetGet${OFF}; (AUTH)
  ${CYAN}mdrAdamProductGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cDASHImplementationGuideCDASHIG]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrCdashigVersionClassesClassDomainsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionClassesClassGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionClassesClassScenariosGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionClassesGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionDomainsDomainFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionDomainsDomainFieldsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionDomainsDomainGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionDomainsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionScenariosDomainScenarioFieldsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionScenariosDomainScenarioGet${OFF}; (AUTH)
  ${CYAN}mdrCdashigVersionScenariosGet${OFF}; (AUTH)
  ${CYAN}mdrRootCdashigDomainsDomainFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrRootCdashigScenariosDomainScenarioFieldsFieldGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[clinicalDataAcquisitionStandardsHarmonizationCDASH]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrCdashVersionClassesClassDomainsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionClassesClassFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionClassesClassGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionClassesGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionDomainsDomainFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionDomainsDomainFieldsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionDomainsDomainGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionDomainsGet${OFF}; (AUTH)
  ${CYAN}mdrCdashVersionGet${OFF}; (AUTH)
  ${CYAN}mdrRootCdashClassesClassFieldsFieldGet${OFF}; (AUTH)
  ${CYAN}mdrRootCdashDomainsDomainFieldsFieldGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[controlledTerminologyCT]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrCtPackagesGet${OFF}; (AUTH)
  ${CYAN}mdrCtPackagesPackageCodelistsCodelistGet${OFF}; (AUTH)
  ${CYAN}mdrCtPackagesPackageCodelistsCodelistTermsGet${OFF}; (AUTH)
  ${CYAN}mdrCtPackagesPackageCodelistsCodelistTermsTermGet${OFF}; (AUTH)
  ${CYAN}mdrCtPackagesPackageCodelistsGet${OFF}; (AUTH)
  ${CYAN}mdrCtPackagesProductGet${OFF}; (AUTH)
  ${CYAN}mdrRootCtProductGroupCodelistsCodelistGet${OFF}; (AUTH)
  ${CYAN}mdrRootCtProductGroupCodelistsCodelistTermsTermGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[default]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrAboutGet${OFF}; (AUTH)
  ${CYAN}mdrLastupdatedGet${OFF}; (AUTH)
  ${CYAN}mdrProductsDataAnalysisGet${OFF}; (AUTH)
  ${CYAN}mdrProductsDataCollectionGet${OFF}; (AUTH)
  ${CYAN}mdrProductsDataTabulationGet${OFF}; (AUTH)
  ${CYAN}mdrProductsGet${OFF}; (AUTH)
  ${CYAN}mdrProductsMeasuresGet${OFF}; (AUTH)
  ${CYAN}mdrProductsTerminologyGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[measures]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrQrsMeasureVersionGet${OFF}; (AUTH)
  ${CYAN}mdrQrsMeasureVersionItemsGet${OFF}; (AUTH)
  ${CYAN}mdrQrsMeasureVersionItemsItemGet${OFF}; (AUTH)
  ${CYAN}mdrQrsMeasureVersionResponsegroupsGet${OFF}; (AUTH)
  ${CYAN}mdrQrsMeasureVersionResponsegroupsResponsegroupGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sDTMImplementationGuideSDTMIG]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrRootSdtmigDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionClassesClassDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionClassesClassGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionClassesGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionDatasetsDatasetGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionDatasetsDatasetVariablesGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmigVersionGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sENDImplementationGuideSENDIG]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrRootSendigDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionClassesClassDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionClassesClassGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionClassesGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionDatasetsDatasetGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionDatasetsDatasetVariablesGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSendigVersionGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[searches]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrSearchGet${OFF}; (AUTH)
  ${CYAN}mdrSearchScopesGet${OFF}; (AUTH)
  ${CYAN}mdrSearchScopesScopeGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[statuses]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}healthGet${OFF}; (AUTH)
  ${CYAN}mdrMaintenanceGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[studyDataTabulationModelSDTM]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}mdrRootSdtmClassesClassVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrRootSdtmDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionClassesClassDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionClassesClassGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionClassesClassVariablesGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionClassesClassVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionClassesGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionDatasetsDatasetGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionDatasetsDatasetVariablesGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionDatasetsDatasetVariablesVarGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionDatasetsGet${OFF}; (AUTH)
  ${CYAN}mdrSdtmVersionGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://library.cdisc.org')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}CDISC Library API command line client (API version 1.1.0)${OFF}"
    echo ""
    echo -e "License: License for CDISC Members &amp; Open Source Developers"
    echo -e "Contact: cdisc_library_support@cdisc.org"
    echo ""
read -r -d '' appdescription <<EOF

REST API Documentation for CDISC Library in production server
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}CDISC Library API command line client (API version 1.1.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for mdrAdamProductDatastructuresGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Data Structure List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductDatastructuresStructureGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresStructureGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresStructureGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Data Structure" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}structure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Data structure Identifier ${YELLOW}Specify as: structure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductDatastructuresStructureVariablesGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresStructureVariablesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresStructureVariablesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Variable List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}structure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Data Structure Identifier ${YELLOW}Specify as: structure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductDatastructuresStructureVariablesVarGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresStructureVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresStructureVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}structure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Data Structure Identifier ${YELLOW}Specify as: structure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductDatastructuresStructureVarsetsGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresStructureVarsetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresStructureVarsetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Variable Set List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}structure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Data Structure Identifier ${YELLOW}Specify as: structure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductDatastructuresStructureVarsetsVarsetGet operation
#
##############################################################################
print_mdrAdamProductDatastructuresStructureVarsetsVarsetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductDatastructuresStructureVarsetsVarsetGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Variable Set" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}structure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Data Structure Identifier ${YELLOW}Specify as: structure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}varset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ADaM Variable Set Identifier ${YELLOW}Specify as: varset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAdamProductGet operation
#
##############################################################################
print_mdrAdamProductGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAdamProductGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get ADaM Product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionClassesClassDomainsGet operation
#
##############################################################################
print_mdrCdashigVersionClassesClassDomainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionClassesClassDomainsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Class Domain List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionClassesClassGet operation
#
##############################################################################
print_mdrCdashigVersionClassesClassGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionClassesClassGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionClassesClassScenariosGet operation
#
##############################################################################
print_mdrCdashigVersionClassesClassScenariosGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionClassesClassScenariosGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Class Scenario List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionClassesGet operation
#
##############################################################################
print_mdrCdashigVersionClassesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionClassesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Class List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionDomainsDomainFieldsFieldGet operation
#
##############################################################################
print_mdrCdashigVersionDomainsDomainFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionDomainsDomainFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Domain Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionDomainsDomainFieldsGet operation
#
##############################################################################
print_mdrCdashigVersionDomainsDomainFieldsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionDomainsDomainFieldsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Domain Field List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionDomainsDomainGet operation
#
##############################################################################
print_mdrCdashigVersionDomainsDomainGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionDomainsDomainGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Domain" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionDomainsGet operation
#
##############################################################################
print_mdrCdashigVersionDomainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionDomainsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Domain List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionGet operation
#
##############################################################################
print_mdrCdashigVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet operation
#
##############################################################################
print_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Scenario Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scenario${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Scenario Identifier ${YELLOW}Specify as: scenario=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionScenariosDomainScenarioFieldsGet operation
#
##############################################################################
print_mdrCdashigVersionScenariosDomainScenarioFieldsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionScenariosDomainScenarioFieldsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Scenario Field List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scenario${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Scenario Identifier ${YELLOW}Specify as: scenario=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionScenariosDomainScenarioGet operation
#
##############################################################################
print_mdrCdashigVersionScenariosDomainScenarioGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionScenariosDomainScenarioGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Scenario" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scenario${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Scenario Identifier ${YELLOW}Specify as: scenario=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashigVersionScenariosGet operation
#
##############################################################################
print_mdrCdashigVersionScenariosGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashigVersionScenariosGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASHIG Scenario List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCdashigDomainsDomainFieldsFieldGet operation
#
##############################################################################
print_mdrRootCdashigDomainsDomainFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCdashigDomainsDomainFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root CDASHIG Domain Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCdashigScenariosDomainScenarioFieldsFieldGet operation
#
##############################################################################
print_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCdashigScenariosDomainScenarioFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root CDASHIG Scenario Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scenario${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Scenario Identifier ${YELLOW}Specify as: scenario=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASHIG Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionClassesClassDomainsGet operation
#
##############################################################################
print_mdrCdashVersionClassesClassDomainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionClassesClassDomainsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Class Domain List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionClassesClassFieldsFieldGet operation
#
##############################################################################
print_mdrCdashVersionClassesClassFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionClassesClassFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Class Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionClassesClassGet operation
#
##############################################################################
print_mdrCdashVersionClassesClassGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionClassesClassGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionClassesGet operation
#
##############################################################################
print_mdrCdashVersionClassesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionClassesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Class List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionDomainsDomainFieldsFieldGet operation
#
##############################################################################
print_mdrCdashVersionDomainsDomainFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionDomainsDomainFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Domain Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionDomainsDomainFieldsGet operation
#
##############################################################################
print_mdrCdashVersionDomainsDomainFieldsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionDomainsDomainFieldsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Domain Field List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionDomainsDomainGet operation
#
##############################################################################
print_mdrCdashVersionDomainsDomainGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionDomainsDomainGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Domain" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionDomainsGet operation
#
##############################################################################
print_mdrCdashVersionDomainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionDomainsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Domain List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCdashVersionGet operation
#
##############################################################################
print_mdrCdashVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCdashVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDASH Product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCdashClassesClassFieldsFieldGet operation
#
##############################################################################
print_mdrRootCdashClassesClassFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCdashClassesClassFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root CDASH Class Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCdashDomainsDomainFieldsFieldGet operation
#
##############################################################################
print_mdrRootCdashDomainsDomainFieldsFieldGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCdashDomainsDomainFieldsFieldGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root CDASH Domain Field" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Domain Identifier ${YELLOW}Specify as: domain=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}field${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDASH Field Identifier ${YELLOW}Specify as: field=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesGet operation
#
##############################################################################
print_mdrCtPackagesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesPackageCodelistsCodelistGet operation
#
##############################################################################
print_mdrCtPackagesPackageCodelistsCodelistGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesPackageCodelistsCodelistGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package Codelist" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}package${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Package Identifier ${YELLOW}Specify as: package=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Identifier ${YELLOW}Specify as: codelist=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesPackageCodelistsCodelistTermsGet operation
#
##############################################################################
print_mdrCtPackagesPackageCodelistsCodelistTermsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesPackageCodelistsCodelistTermsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package Codelist Term List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}package${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Package Identifier ${YELLOW}Specify as: package=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Identifier ${YELLOW}Specify as: codelist=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesPackageCodelistsCodelistTermsTermGet operation
#
##############################################################################
print_mdrCtPackagesPackageCodelistsCodelistTermsTermGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesPackageCodelistsCodelistTermsTermGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package Codelist Term" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}package${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Package Product Identifier ${YELLOW}Specify as: package=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Identifier ${YELLOW}Specify as: codelist=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}term${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Term Identifier ${YELLOW}Specify as: term=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesPackageCodelistsGet operation
#
##############################################################################
print_mdrCtPackagesPackageCodelistsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesPackageCodelistsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package Codelist List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}package${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Package Identifier ${YELLOW}Specify as: package=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrCtPackagesProductGet operation
#
##############################################################################
print_mdrCtPackagesProductGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrCtPackagesProductGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library CT Package" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Package Product Identifier ${YELLOW}Specify as: product=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCtProductGroupCodelistsCodelistGet operation
#
##############################################################################
print_mdrRootCtProductGroupCodelistsCodelistGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCtProductGroupCodelistsCodelistGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Root CT Codelist" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}productGroup${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Product Group Identifier ${YELLOW}Specify as: productGroup=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Identifier ${YELLOW}Specify as: codelist=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootCtProductGroupCodelistsCodelistTermsTermGet operation
#
##############################################################################
print_mdrRootCtProductGroupCodelistsCodelistTermsTermGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootCtProductGroupCodelistsCodelistTermsTermGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Root CT Term" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}productGroup${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Product Group Identifier ${YELLOW}Specify as: productGroup=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Identifier ${YELLOW}Specify as: codelist=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}term${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CT Codelist Term Identifier ${YELLOW}Specify as: term=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrAboutGet operation
#
##############################################################################
print_mdrAboutGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrAboutGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Information About CDISC Library" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrLastupdatedGet operation
#
##############################################################################
print_mdrLastupdatedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrLastupdatedGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Last Updated" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsDataAnalysisGet operation
#
##############################################################################
print_mdrProductsDataAnalysisGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsDataAnalysisGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Product Group Data Analysis" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsDataCollectionGet operation
#
##############################################################################
print_mdrProductsDataCollectionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsDataCollectionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Product Group Data Collection" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsDataTabulationGet operation
#
##############################################################################
print_mdrProductsDataTabulationGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsDataTabulationGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Product Group Data Tabulation" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsGet operation
#
##############################################################################
print_mdrProductsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Products" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsMeasuresGet operation
#
##############################################################################
print_mdrProductsMeasuresGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsMeasuresGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Product Group QRS" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrProductsTerminologyGet operation
#
##############################################################################
print_mdrProductsTerminologyGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrProductsTerminologyGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get CDISC Library Product Group Terminology" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrQrsMeasureVersionGet operation
#
##############################################################################
print_mdrQrsMeasureVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrQrsMeasureVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get QRS Product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}measure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Identifier ${YELLOW}Specify as: measure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrQrsMeasureVersionItemsGet operation
#
##############################################################################
print_mdrQrsMeasureVersionItemsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrQrsMeasureVersionItemsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get QRS Item List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}measure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Identifier ${YELLOW}Specify as: measure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrQrsMeasureVersionItemsItemGet operation
#
##############################################################################
print_mdrQrsMeasureVersionItemsItemGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrQrsMeasureVersionItemsItemGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get QRS Item" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}measure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Identifier ${YELLOW}Specify as: measure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}item${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Item Identifier ${YELLOW}Specify as: item=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrQrsMeasureVersionResponsegroupsGet operation
#
##############################################################################
print_mdrQrsMeasureVersionResponsegroupsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrQrsMeasureVersionResponsegroupsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get QRS Response Group List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}measure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Identifier ${YELLOW}Specify as: measure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrQrsMeasureVersionResponsegroupsResponsegroupGet operation
#
##############################################################################
print_mdrQrsMeasureVersionResponsegroupsResponsegroupGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrQrsMeasureVersionResponsegroupsResponsegroupGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get QRS Response Group" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}measure${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure Identifier ${YELLOW}Specify as: measure=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}responsegroup${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - QRS Measure's Response Group Identifier ${YELLOW}Specify as: responsegroup=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootSdtmigDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrRootSdtmigDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootSdtmigDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root SDTMIG Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionClassesClassDatasetsGet operation
#
##############################################################################
print_mdrSdtmigVersionClassesClassDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionClassesClassDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Class Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionClassesClassGet operation
#
##############################################################################
print_mdrSdtmigVersionClassesClassGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionClassesClassGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionClassesGet operation
#
##############################################################################
print_mdrSdtmigVersionClassesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionClassesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Class List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionDatasetsDatasetGet operation
#
##############################################################################
print_mdrSdtmigVersionDatasetsDatasetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionDatasetsDatasetGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Dataset" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
print_mdrSdtmigVersionDatasetsDatasetVariablesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionDatasetsDatasetVariablesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Dataset Variable List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrSdtmigVersionDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTMIG Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionDatasetsGet operation
#
##############################################################################
print_mdrSdtmigVersionDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmigVersionGet operation
#
##############################################################################
print_mdrSdtmigVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmigVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTMIG product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootSendigDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrRootSendigDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootSendigDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root SENDIG Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionClassesClassDatasetsGet operation
#
##############################################################################
print_mdrSendigVersionClassesClassDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionClassesClassDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Class Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionClassesClassGet operation
#
##############################################################################
print_mdrSendigVersionClassesClassGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionClassesClassGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionClassesGet operation
#
##############################################################################
print_mdrSendigVersionClassesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionClassesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Class List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionDatasetsDatasetGet operation
#
##############################################################################
print_mdrSendigVersionDatasetsDatasetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionDatasetsDatasetGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Dataset" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Class Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
print_mdrSendigVersionDatasetsDatasetVariablesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionDatasetsDatasetVariablesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Dataset Variable List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Class Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrSendigVersionDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Class Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SENDIG Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionDatasetsGet operation
#
##############################################################################
print_mdrSendigVersionDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSendigVersionGet operation
#
##############################################################################
print_mdrSendigVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSendigVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SENDIG product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSearchGet operation
#
##############################################################################
print_mdrSearchGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSearchGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Search Results Across CDISC Library" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}q${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Search Term Expression${YELLOW} Specify as: q=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}highlight${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Search Highlight Expression${YELLOW} Specify as: highlight=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}start${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Initial Search Result Index${YELLOW} Specify as: start=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pageSize${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 100)${OFF} - Number of Search Results to Return${YELLOW} Specify as: pageSize=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Class${YELLOW} Specify as: class=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}codelist${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Codelist${YELLOW} Specify as: codelist=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}conceptId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Concept ID${YELLOW} Specify as: conceptId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}core${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Core${YELLOW} Specify as: core=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataStructure${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Data Structure${YELLOW} Specify as: dataStructure=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}datasetStructure${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Dataset Structure${YELLOW} Specify as: datasetStructure=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}definition${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Definition${YELLOW} Specify as: definition=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}description${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Description${YELLOW} Specify as: description=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Domain${YELLOW} Specify as: domain=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}effectiveDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Effective Date${YELLOW} Specify as: effectiveDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}extensible${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Extensible${YELLOW} Specify as: extensible=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}href${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Href${YELLOW} Specify as: href=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}label${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Label${YELLOW} Specify as: label=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}measureType${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - SLimit Search by Setting Scope to Measure Type${YELLOW} Specify as: measureType=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Name${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}preferredTerm${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Preferred Term${YELLOW} Specify as: preferredTerm=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}product${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Product${YELLOW} Specify as: product=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}productGroup${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Product Group${YELLOW} Specify as: productGroup=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}registrationStatus${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Registration Status${YELLOW} Specify as: registrationStatus=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}roleDescription${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Role Description${YELLOW} Specify as: roleDescription=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sdtmTarget${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to SDTM Target${YELLOW} Specify as: sdtmTarget=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}simpleDatatype${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Simple Datatype${YELLOW} Specify as: simpleDatatype=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}submissionValue${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Submission Value${YELLOW} Specify as: submissionValue=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}synonyms${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Synonyms${YELLOW} Specify as: synonyms=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}type${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Type${YELLOW} Specify as: type=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}uiHref${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to UI Href${YELLOW} Specify as: uiHref=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}valueDomain${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Value Domain${YELLOW} Specify as: valueDomain=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}variableSet${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Variable Set${YELLOW} Specify as: variableSet=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Limit Search by Setting Scope to Version${YELLOW} Specify as: version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSearchScopesGet operation
#
##############################################################################
print_mdrSearchScopesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSearchScopesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Search Results Across CDISC Library" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSearchScopesScopeGet operation
#
##############################################################################
print_mdrSearchScopesScopeGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSearchScopesScopeGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Search Results Limited to Scope" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}scope${OFF} ${BLUE}[DefaultSearchScopes]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Search Scope ${YELLOW}Specify as: scope=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for healthGet operation
#
##############################################################################
print_healthGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}healthGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Check health of system components" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrMaintenanceGet operation
#
##############################################################################
print_mdrMaintenanceGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrMaintenanceGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Set maintenance mode and message" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootSdtmClassesClassVariablesVarGet operation
#
##############################################################################
print_mdrRootSdtmClassesClassVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootSdtmClassesClassVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root of SDTM Class Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrRootSdtmDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrRootSdtmDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrRootSdtmDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get Root SDTM Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionClassesClassDatasetsGet operation
#
##############################################################################
print_mdrSdtmVersionClassesClassDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionClassesClassDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Class Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionClassesClassGet operation
#
##############################################################################
print_mdrSdtmVersionClassesClassGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionClassesClassGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Class" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionClassesClassVariablesGet operation
#
##############################################################################
print_mdrSdtmVersionClassesClassVariablesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionClassesClassVariablesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Class Variable List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionClassesClassVariablesVarGet operation
#
##############################################################################
print_mdrSdtmVersionClassesClassVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionClassesClassVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Class Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}class${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Class Identifier ${YELLOW}Specify as: class=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionClassesGet operation
#
##############################################################################
print_mdrSdtmVersionClassesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionClassesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Class List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionDatasetsDatasetGet operation
#
##############################################################################
print_mdrSdtmVersionDatasetsDatasetGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionDatasetsDatasetGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Dataset" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
print_mdrSdtmVersionDatasetsDatasetVariablesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionDatasetsDatasetVariablesGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Dataset Variable List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
print_mdrSdtmVersionDatasetsDatasetVariablesVarGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionDatasetsDatasetVariablesVarGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Dataset Variable" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dataset${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Dataset Identifier ${YELLOW}Specify as: dataset=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}var${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - SDTM Variable Identifier ${YELLOW}Specify as: var=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionDatasetsGet operation
#
##############################################################################
print_mdrSdtmVersionDatasetsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionDatasetsGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM Dataset List" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mdrSdtmVersionGet operation
#
##############################################################################
print_mdrSdtmVersionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mdrSdtmVersionGet - ${OFF}${BLUE}(AUTH - BASIC)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get SDTM product" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}version${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - CDISC Library Product Version ${YELLOW}Specify as: version=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=405
    echo -e "${result_color_table[${code:0:1}]}  405;Method Not Allowed${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=406
    echo -e "${result_color_table[${code:0:1}]}  406;Not Acceptable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=503
    echo -e "${result_color_table[${code:0:1}]}  503;Service Unavailable${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=504
    echo -e "${result_color_table[${code:0:1}]}  504;Gateway Timeout Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call mdrAdamProductDatastructuresGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductDatastructuresStructureGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresStructureGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product structure)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures/{structure}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductDatastructuresStructureVariablesGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresStructureVariablesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product structure)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures/{structure}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductDatastructuresStructureVariablesVarGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresStructureVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product structure var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures/{structure}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductDatastructuresStructureVarsetsGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresStructureVarsetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product structure)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures/{structure}/varsets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductDatastructuresStructureVarsetsVarsetGet operation
#
##############################################################################
call_mdrAdamProductDatastructuresStructureVarsetsVarsetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product structure varset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}/datastructures/{structure}/varsets/{varset}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAdamProductGet operation
#
##############################################################################
call_mdrAdamProductGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/adam/{product}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionClassesClassDomainsGet operation
#
##############################################################################
call_mdrCdashigVersionClassesClassDomainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/classes/{class}/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionClassesClassGet operation
#
##############################################################################
call_mdrCdashigVersionClassesClassGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/classes/{class}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionClassesClassScenariosGet operation
#
##############################################################################
call_mdrCdashigVersionClassesClassScenariosGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/classes/{class}/scenarios" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionClassesGet operation
#
##############################################################################
call_mdrCdashigVersionClassesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/classes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionDomainsDomainFieldsFieldGet operation
#
##############################################################################
call_mdrCdashigVersionDomainsDomainFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/domains/{domain}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionDomainsDomainFieldsGet operation
#
##############################################################################
call_mdrCdashigVersionDomainsDomainFieldsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/domains/{domain}/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionDomainsDomainGet operation
#
##############################################################################
call_mdrCdashigVersionDomainsDomainGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/domains/{domain}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionDomainsGet operation
#
##############################################################################
call_mdrCdashigVersionDomainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionGet operation
#
##############################################################################
call_mdrCdashigVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet operation
#
##############################################################################
call_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain scenario field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionScenariosDomainScenarioFieldsGet operation
#
##############################################################################
call_mdrCdashigVersionScenariosDomainScenarioFieldsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain scenario)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/scenarios/{domain}.{scenario}/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionScenariosDomainScenarioGet operation
#
##############################################################################
call_mdrCdashigVersionScenariosDomainScenarioGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain scenario)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/scenarios/{domain}.{scenario}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashigVersionScenariosGet operation
#
##############################################################################
call_mdrCdashigVersionScenariosGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdashig/{version}/scenarios" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCdashigDomainsDomainFieldsFieldGet operation
#
##############################################################################
call_mdrRootCdashigDomainsDomainFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(domain field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/cdashig/domains/{domain}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCdashigScenariosDomainScenarioFieldsFieldGet operation
#
##############################################################################
call_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(domain scenario field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/cdashig/scenarios/{domain}.{scenario}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionClassesClassDomainsGet operation
#
##############################################################################
call_mdrCdashVersionClassesClassDomainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/classes/{class}/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionClassesClassFieldsFieldGet operation
#
##############################################################################
call_mdrCdashVersionClassesClassFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/classes/{class}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionClassesClassGet operation
#
##############################################################################
call_mdrCdashVersionClassesClassGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/classes/{class}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionClassesGet operation
#
##############################################################################
call_mdrCdashVersionClassesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/classes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionDomainsDomainFieldsFieldGet operation
#
##############################################################################
call_mdrCdashVersionDomainsDomainFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/domains/{domain}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionDomainsDomainFieldsGet operation
#
##############################################################################
call_mdrCdashVersionDomainsDomainFieldsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/domains/{domain}/fields" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionDomainsDomainGet operation
#
##############################################################################
call_mdrCdashVersionDomainsDomainGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version domain)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/domains/{domain}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionDomainsGet operation
#
##############################################################################
call_mdrCdashVersionDomainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}/domains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCdashVersionGet operation
#
##############################################################################
call_mdrCdashVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/cdash/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCdashClassesClassFieldsFieldGet operation
#
##############################################################################
call_mdrRootCdashClassesClassFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(class field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/cdash/classes/{class}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCdashDomainsDomainFieldsFieldGet operation
#
##############################################################################
call_mdrRootCdashDomainsDomainFieldsFieldGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(domain field)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/cdash/domains/{domain}/fields/{field}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesGet operation
#
##############################################################################
call_mdrCtPackagesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesPackageCodelistsCodelistGet operation
#
##############################################################################
call_mdrCtPackagesPackageCodelistsCodelistGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(package codelist)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages/{package}/codelists/{codelist}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesPackageCodelistsCodelistTermsGet operation
#
##############################################################################
call_mdrCtPackagesPackageCodelistsCodelistTermsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(package codelist)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages/{package}/codelists/{codelist}/terms" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesPackageCodelistsCodelistTermsTermGet operation
#
##############################################################################
call_mdrCtPackagesPackageCodelistsCodelistTermsTermGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(package codelist term)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages/{package}/codelists/{codelist}/terms/{term}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesPackageCodelistsGet operation
#
##############################################################################
call_mdrCtPackagesPackageCodelistsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(package)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages/{package}/codelists" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrCtPackagesProductGet operation
#
##############################################################################
call_mdrCtPackagesProductGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(product)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/ct/packages/{product}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCtProductGroupCodelistsCodelistGet operation
#
##############################################################################
call_mdrRootCtProductGroupCodelistsCodelistGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(productGroup codelist)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/ct/{productGroup}/codelists/{codelist}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootCtProductGroupCodelistsCodelistTermsTermGet operation
#
##############################################################################
call_mdrRootCtProductGroupCodelistsCodelistTermsTermGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(productGroup codelist term)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/ct/{productGroup}/codelists/{codelist}/terms/{term}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrAboutGet operation
#
##############################################################################
call_mdrAboutGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/about" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrLastupdatedGet operation
#
##############################################################################
call_mdrLastupdatedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/lastupdated" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsDataAnalysisGet operation
#
##############################################################################
call_mdrProductsDataAnalysisGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products/DataAnalysis" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsDataCollectionGet operation
#
##############################################################################
call_mdrProductsDataCollectionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products/DataCollection" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsDataTabulationGet operation
#
##############################################################################
call_mdrProductsDataTabulationGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products/DataTabulation" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsGet operation
#
##############################################################################
call_mdrProductsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsMeasuresGet operation
#
##############################################################################
call_mdrProductsMeasuresGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products/Measures" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrProductsTerminologyGet operation
#
##############################################################################
call_mdrProductsTerminologyGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/products/Terminology" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrQrsMeasureVersionGet operation
#
##############################################################################
call_mdrQrsMeasureVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(measure version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/qrs/{measure}/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrQrsMeasureVersionItemsGet operation
#
##############################################################################
call_mdrQrsMeasureVersionItemsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(measure version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/qrs/{measure}/{version}/items" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrQrsMeasureVersionItemsItemGet operation
#
##############################################################################
call_mdrQrsMeasureVersionItemsItemGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(measure version item)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/qrs/{measure}/{version}/items/{item}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrQrsMeasureVersionResponsegroupsGet operation
#
##############################################################################
call_mdrQrsMeasureVersionResponsegroupsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(measure version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/qrs/{measure}/{version}/responsegroups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrQrsMeasureVersionResponsegroupsResponsegroupGet operation
#
##############################################################################
call_mdrQrsMeasureVersionResponsegroupsResponsegroupGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(measure version responsegroup)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/qrs/{measure}/{version}/responsegroups/{responsegroup}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootSdtmigDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrRootSdtmigDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/sdtmig/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionClassesClassDatasetsGet operation
#
##############################################################################
call_mdrSdtmigVersionClassesClassDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/classes/{class}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionClassesClassGet operation
#
##############################################################################
call_mdrSdtmigVersionClassesClassGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/classes/{class}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionClassesGet operation
#
##############################################################################
call_mdrSdtmigVersionClassesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/classes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionDatasetsDatasetGet operation
#
##############################################################################
call_mdrSdtmigVersionDatasetsDatasetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/datasets/{dataset}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
call_mdrSdtmigVersionDatasetsDatasetVariablesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/datasets/{dataset}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrSdtmigVersionDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionDatasetsGet operation
#
##############################################################################
call_mdrSdtmigVersionDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmigVersionGet operation
#
##############################################################################
call_mdrSdtmigVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtmig/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootSendigDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrRootSendigDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/sendig/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionClassesClassDatasetsGet operation
#
##############################################################################
call_mdrSendigVersionClassesClassDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/classes/{class}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionClassesClassGet operation
#
##############################################################################
call_mdrSendigVersionClassesClassGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/classes/{class}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionClassesGet operation
#
##############################################################################
call_mdrSendigVersionClassesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/classes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionDatasetsDatasetGet operation
#
##############################################################################
call_mdrSendigVersionDatasetsDatasetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/datasets/{dataset}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
call_mdrSendigVersionDatasetsDatasetVariablesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/datasets/{dataset}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrSendigVersionDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionDatasetsGet operation
#
##############################################################################
call_mdrSendigVersionDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSendigVersionGet operation
#
##############################################################################
call_mdrSendigVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sendig/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSearchGet operation
#
##############################################################################
call_mdrSearchGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(q highlight start pageSize class codelist conceptId core dataStructure datasetStructure definition description domain effectiveDate extensible href label measureType name preferredTerm product productGroup registrationStatus roleDescription sdtmTarget simpleDatatype submissionValue synonyms type uiHref valueDomain variableSet version  )
    local path

    if ! path=$(build_request_path "/api/mdr/search" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSearchScopesGet operation
#
##############################################################################
call_mdrSearchScopesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/search/scopes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSearchScopesScopeGet operation
#
##############################################################################
call_mdrSearchScopesScopeGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(scope)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/search/scopes/{scope}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call healthGet operation
#
##############################################################################
call_healthGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/health" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrMaintenanceGet operation
#
##############################################################################
call_mdrMaintenanceGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/maintenance" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootSdtmClassesClassVariablesVarGet operation
#
##############################################################################
call_mdrRootSdtmClassesClassVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(class var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/sdtm/classes/{class}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrRootSdtmDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrRootSdtmDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/root/sdtm/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionClassesClassDatasetsGet operation
#
##############################################################################
call_mdrSdtmVersionClassesClassDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/classes/{class}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionClassesClassGet operation
#
##############################################################################
call_mdrSdtmVersionClassesClassGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/classes/{class}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionClassesClassVariablesGet operation
#
##############################################################################
call_mdrSdtmVersionClassesClassVariablesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/classes/{class}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionClassesClassVariablesVarGet operation
#
##############################################################################
call_mdrSdtmVersionClassesClassVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version class var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/classes/{class}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionClassesGet operation
#
##############################################################################
call_mdrSdtmVersionClassesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/classes" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionDatasetsDatasetGet operation
#
##############################################################################
call_mdrSdtmVersionDatasetsDatasetGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/datasets/{dataset}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionDatasetsDatasetVariablesGet operation
#
##############################################################################
call_mdrSdtmVersionDatasetsDatasetVariablesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/datasets/{dataset}/variables" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionDatasetsDatasetVariablesVarGet operation
#
##############################################################################
call_mdrSdtmVersionDatasetsDatasetVariablesVarGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version dataset var)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/datasets/{dataset}/variables/{var}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionDatasetsGet operation
#
##############################################################################
call_mdrSdtmVersionDatasetsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}/datasets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call mdrSdtmVersionGet operation
#
##############################################################################
call_mdrSdtmVersionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(version)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/mdr/sdtm/{version}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    mdrAdamProductDatastructuresGet)
    operation="mdrAdamProductDatastructuresGet"
    ;;
    mdrAdamProductDatastructuresStructureGet)
    operation="mdrAdamProductDatastructuresStructureGet"
    ;;
    mdrAdamProductDatastructuresStructureVariablesGet)
    operation="mdrAdamProductDatastructuresStructureVariablesGet"
    ;;
    mdrAdamProductDatastructuresStructureVariablesVarGet)
    operation="mdrAdamProductDatastructuresStructureVariablesVarGet"
    ;;
    mdrAdamProductDatastructuresStructureVarsetsGet)
    operation="mdrAdamProductDatastructuresStructureVarsetsGet"
    ;;
    mdrAdamProductDatastructuresStructureVarsetsVarsetGet)
    operation="mdrAdamProductDatastructuresStructureVarsetsVarsetGet"
    ;;
    mdrAdamProductGet)
    operation="mdrAdamProductGet"
    ;;
    mdrCdashigVersionClassesClassDomainsGet)
    operation="mdrCdashigVersionClassesClassDomainsGet"
    ;;
    mdrCdashigVersionClassesClassGet)
    operation="mdrCdashigVersionClassesClassGet"
    ;;
    mdrCdashigVersionClassesClassScenariosGet)
    operation="mdrCdashigVersionClassesClassScenariosGet"
    ;;
    mdrCdashigVersionClassesGet)
    operation="mdrCdashigVersionClassesGet"
    ;;
    mdrCdashigVersionDomainsDomainFieldsFieldGet)
    operation="mdrCdashigVersionDomainsDomainFieldsFieldGet"
    ;;
    mdrCdashigVersionDomainsDomainFieldsGet)
    operation="mdrCdashigVersionDomainsDomainFieldsGet"
    ;;
    mdrCdashigVersionDomainsDomainGet)
    operation="mdrCdashigVersionDomainsDomainGet"
    ;;
    mdrCdashigVersionDomainsGet)
    operation="mdrCdashigVersionDomainsGet"
    ;;
    mdrCdashigVersionGet)
    operation="mdrCdashigVersionGet"
    ;;
    mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet)
    operation="mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet"
    ;;
    mdrCdashigVersionScenariosDomainScenarioFieldsGet)
    operation="mdrCdashigVersionScenariosDomainScenarioFieldsGet"
    ;;
    mdrCdashigVersionScenariosDomainScenarioGet)
    operation="mdrCdashigVersionScenariosDomainScenarioGet"
    ;;
    mdrCdashigVersionScenariosGet)
    operation="mdrCdashigVersionScenariosGet"
    ;;
    mdrRootCdashigDomainsDomainFieldsFieldGet)
    operation="mdrRootCdashigDomainsDomainFieldsFieldGet"
    ;;
    mdrRootCdashigScenariosDomainScenarioFieldsFieldGet)
    operation="mdrRootCdashigScenariosDomainScenarioFieldsFieldGet"
    ;;
    mdrCdashVersionClassesClassDomainsGet)
    operation="mdrCdashVersionClassesClassDomainsGet"
    ;;
    mdrCdashVersionClassesClassFieldsFieldGet)
    operation="mdrCdashVersionClassesClassFieldsFieldGet"
    ;;
    mdrCdashVersionClassesClassGet)
    operation="mdrCdashVersionClassesClassGet"
    ;;
    mdrCdashVersionClassesGet)
    operation="mdrCdashVersionClassesGet"
    ;;
    mdrCdashVersionDomainsDomainFieldsFieldGet)
    operation="mdrCdashVersionDomainsDomainFieldsFieldGet"
    ;;
    mdrCdashVersionDomainsDomainFieldsGet)
    operation="mdrCdashVersionDomainsDomainFieldsGet"
    ;;
    mdrCdashVersionDomainsDomainGet)
    operation="mdrCdashVersionDomainsDomainGet"
    ;;
    mdrCdashVersionDomainsGet)
    operation="mdrCdashVersionDomainsGet"
    ;;
    mdrCdashVersionGet)
    operation="mdrCdashVersionGet"
    ;;
    mdrRootCdashClassesClassFieldsFieldGet)
    operation="mdrRootCdashClassesClassFieldsFieldGet"
    ;;
    mdrRootCdashDomainsDomainFieldsFieldGet)
    operation="mdrRootCdashDomainsDomainFieldsFieldGet"
    ;;
    mdrCtPackagesGet)
    operation="mdrCtPackagesGet"
    ;;
    mdrCtPackagesPackageCodelistsCodelistGet)
    operation="mdrCtPackagesPackageCodelistsCodelistGet"
    ;;
    mdrCtPackagesPackageCodelistsCodelistTermsGet)
    operation="mdrCtPackagesPackageCodelistsCodelistTermsGet"
    ;;
    mdrCtPackagesPackageCodelistsCodelistTermsTermGet)
    operation="mdrCtPackagesPackageCodelistsCodelistTermsTermGet"
    ;;
    mdrCtPackagesPackageCodelistsGet)
    operation="mdrCtPackagesPackageCodelistsGet"
    ;;
    mdrCtPackagesProductGet)
    operation="mdrCtPackagesProductGet"
    ;;
    mdrRootCtProductGroupCodelistsCodelistGet)
    operation="mdrRootCtProductGroupCodelistsCodelistGet"
    ;;
    mdrRootCtProductGroupCodelistsCodelistTermsTermGet)
    operation="mdrRootCtProductGroupCodelistsCodelistTermsTermGet"
    ;;
    mdrAboutGet)
    operation="mdrAboutGet"
    ;;
    mdrLastupdatedGet)
    operation="mdrLastupdatedGet"
    ;;
    mdrProductsDataAnalysisGet)
    operation="mdrProductsDataAnalysisGet"
    ;;
    mdrProductsDataCollectionGet)
    operation="mdrProductsDataCollectionGet"
    ;;
    mdrProductsDataTabulationGet)
    operation="mdrProductsDataTabulationGet"
    ;;
    mdrProductsGet)
    operation="mdrProductsGet"
    ;;
    mdrProductsMeasuresGet)
    operation="mdrProductsMeasuresGet"
    ;;
    mdrProductsTerminologyGet)
    operation="mdrProductsTerminologyGet"
    ;;
    mdrQrsMeasureVersionGet)
    operation="mdrQrsMeasureVersionGet"
    ;;
    mdrQrsMeasureVersionItemsGet)
    operation="mdrQrsMeasureVersionItemsGet"
    ;;
    mdrQrsMeasureVersionItemsItemGet)
    operation="mdrQrsMeasureVersionItemsItemGet"
    ;;
    mdrQrsMeasureVersionResponsegroupsGet)
    operation="mdrQrsMeasureVersionResponsegroupsGet"
    ;;
    mdrQrsMeasureVersionResponsegroupsResponsegroupGet)
    operation="mdrQrsMeasureVersionResponsegroupsResponsegroupGet"
    ;;
    mdrRootSdtmigDatasetsDatasetVariablesVarGet)
    operation="mdrRootSdtmigDatasetsDatasetVariablesVarGet"
    ;;
    mdrSdtmigVersionClassesClassDatasetsGet)
    operation="mdrSdtmigVersionClassesClassDatasetsGet"
    ;;
    mdrSdtmigVersionClassesClassGet)
    operation="mdrSdtmigVersionClassesClassGet"
    ;;
    mdrSdtmigVersionClassesGet)
    operation="mdrSdtmigVersionClassesGet"
    ;;
    mdrSdtmigVersionDatasetsDatasetGet)
    operation="mdrSdtmigVersionDatasetsDatasetGet"
    ;;
    mdrSdtmigVersionDatasetsDatasetVariablesGet)
    operation="mdrSdtmigVersionDatasetsDatasetVariablesGet"
    ;;
    mdrSdtmigVersionDatasetsDatasetVariablesVarGet)
    operation="mdrSdtmigVersionDatasetsDatasetVariablesVarGet"
    ;;
    mdrSdtmigVersionDatasetsGet)
    operation="mdrSdtmigVersionDatasetsGet"
    ;;
    mdrSdtmigVersionGet)
    operation="mdrSdtmigVersionGet"
    ;;
    mdrRootSendigDatasetsDatasetVariablesVarGet)
    operation="mdrRootSendigDatasetsDatasetVariablesVarGet"
    ;;
    mdrSendigVersionClassesClassDatasetsGet)
    operation="mdrSendigVersionClassesClassDatasetsGet"
    ;;
    mdrSendigVersionClassesClassGet)
    operation="mdrSendigVersionClassesClassGet"
    ;;
    mdrSendigVersionClassesGet)
    operation="mdrSendigVersionClassesGet"
    ;;
    mdrSendigVersionDatasetsDatasetGet)
    operation="mdrSendigVersionDatasetsDatasetGet"
    ;;
    mdrSendigVersionDatasetsDatasetVariablesGet)
    operation="mdrSendigVersionDatasetsDatasetVariablesGet"
    ;;
    mdrSendigVersionDatasetsDatasetVariablesVarGet)
    operation="mdrSendigVersionDatasetsDatasetVariablesVarGet"
    ;;
    mdrSendigVersionDatasetsGet)
    operation="mdrSendigVersionDatasetsGet"
    ;;
    mdrSendigVersionGet)
    operation="mdrSendigVersionGet"
    ;;
    mdrSearchGet)
    operation="mdrSearchGet"
    ;;
    mdrSearchScopesGet)
    operation="mdrSearchScopesGet"
    ;;
    mdrSearchScopesScopeGet)
    operation="mdrSearchScopesScopeGet"
    ;;
    healthGet)
    operation="healthGet"
    ;;
    mdrMaintenanceGet)
    operation="mdrMaintenanceGet"
    ;;
    mdrRootSdtmClassesClassVariablesVarGet)
    operation="mdrRootSdtmClassesClassVariablesVarGet"
    ;;
    mdrRootSdtmDatasetsDatasetVariablesVarGet)
    operation="mdrRootSdtmDatasetsDatasetVariablesVarGet"
    ;;
    mdrSdtmVersionClassesClassDatasetsGet)
    operation="mdrSdtmVersionClassesClassDatasetsGet"
    ;;
    mdrSdtmVersionClassesClassGet)
    operation="mdrSdtmVersionClassesClassGet"
    ;;
    mdrSdtmVersionClassesClassVariablesGet)
    operation="mdrSdtmVersionClassesClassVariablesGet"
    ;;
    mdrSdtmVersionClassesClassVariablesVarGet)
    operation="mdrSdtmVersionClassesClassVariablesVarGet"
    ;;
    mdrSdtmVersionClassesGet)
    operation="mdrSdtmVersionClassesGet"
    ;;
    mdrSdtmVersionDatasetsDatasetGet)
    operation="mdrSdtmVersionDatasetsDatasetGet"
    ;;
    mdrSdtmVersionDatasetsDatasetVariablesGet)
    operation="mdrSdtmVersionDatasetsDatasetVariablesGet"
    ;;
    mdrSdtmVersionDatasetsDatasetVariablesVarGet)
    operation="mdrSdtmVersionDatasetsDatasetVariablesVarGet"
    ;;
    mdrSdtmVersionDatasetsGet)
    operation="mdrSdtmVersionDatasetsGet"
    ;;
    mdrSdtmVersionGet)
    operation="mdrSdtmVersionGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    mdrAdamProductDatastructuresGet)
    call_mdrAdamProductDatastructuresGet
    ;;
    mdrAdamProductDatastructuresStructureGet)
    call_mdrAdamProductDatastructuresStructureGet
    ;;
    mdrAdamProductDatastructuresStructureVariablesGet)
    call_mdrAdamProductDatastructuresStructureVariablesGet
    ;;
    mdrAdamProductDatastructuresStructureVariablesVarGet)
    call_mdrAdamProductDatastructuresStructureVariablesVarGet
    ;;
    mdrAdamProductDatastructuresStructureVarsetsGet)
    call_mdrAdamProductDatastructuresStructureVarsetsGet
    ;;
    mdrAdamProductDatastructuresStructureVarsetsVarsetGet)
    call_mdrAdamProductDatastructuresStructureVarsetsVarsetGet
    ;;
    mdrAdamProductGet)
    call_mdrAdamProductGet
    ;;
    mdrCdashigVersionClassesClassDomainsGet)
    call_mdrCdashigVersionClassesClassDomainsGet
    ;;
    mdrCdashigVersionClassesClassGet)
    call_mdrCdashigVersionClassesClassGet
    ;;
    mdrCdashigVersionClassesClassScenariosGet)
    call_mdrCdashigVersionClassesClassScenariosGet
    ;;
    mdrCdashigVersionClassesGet)
    call_mdrCdashigVersionClassesGet
    ;;
    mdrCdashigVersionDomainsDomainFieldsFieldGet)
    call_mdrCdashigVersionDomainsDomainFieldsFieldGet
    ;;
    mdrCdashigVersionDomainsDomainFieldsGet)
    call_mdrCdashigVersionDomainsDomainFieldsGet
    ;;
    mdrCdashigVersionDomainsDomainGet)
    call_mdrCdashigVersionDomainsDomainGet
    ;;
    mdrCdashigVersionDomainsGet)
    call_mdrCdashigVersionDomainsGet
    ;;
    mdrCdashigVersionGet)
    call_mdrCdashigVersionGet
    ;;
    mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet)
    call_mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet
    ;;
    mdrCdashigVersionScenariosDomainScenarioFieldsGet)
    call_mdrCdashigVersionScenariosDomainScenarioFieldsGet
    ;;
    mdrCdashigVersionScenariosDomainScenarioGet)
    call_mdrCdashigVersionScenariosDomainScenarioGet
    ;;
    mdrCdashigVersionScenariosGet)
    call_mdrCdashigVersionScenariosGet
    ;;
    mdrRootCdashigDomainsDomainFieldsFieldGet)
    call_mdrRootCdashigDomainsDomainFieldsFieldGet
    ;;
    mdrRootCdashigScenariosDomainScenarioFieldsFieldGet)
    call_mdrRootCdashigScenariosDomainScenarioFieldsFieldGet
    ;;
    mdrCdashVersionClassesClassDomainsGet)
    call_mdrCdashVersionClassesClassDomainsGet
    ;;
    mdrCdashVersionClassesClassFieldsFieldGet)
    call_mdrCdashVersionClassesClassFieldsFieldGet
    ;;
    mdrCdashVersionClassesClassGet)
    call_mdrCdashVersionClassesClassGet
    ;;
    mdrCdashVersionClassesGet)
    call_mdrCdashVersionClassesGet
    ;;
    mdrCdashVersionDomainsDomainFieldsFieldGet)
    call_mdrCdashVersionDomainsDomainFieldsFieldGet
    ;;
    mdrCdashVersionDomainsDomainFieldsGet)
    call_mdrCdashVersionDomainsDomainFieldsGet
    ;;
    mdrCdashVersionDomainsDomainGet)
    call_mdrCdashVersionDomainsDomainGet
    ;;
    mdrCdashVersionDomainsGet)
    call_mdrCdashVersionDomainsGet
    ;;
    mdrCdashVersionGet)
    call_mdrCdashVersionGet
    ;;
    mdrRootCdashClassesClassFieldsFieldGet)
    call_mdrRootCdashClassesClassFieldsFieldGet
    ;;
    mdrRootCdashDomainsDomainFieldsFieldGet)
    call_mdrRootCdashDomainsDomainFieldsFieldGet
    ;;
    mdrCtPackagesGet)
    call_mdrCtPackagesGet
    ;;
    mdrCtPackagesPackageCodelistsCodelistGet)
    call_mdrCtPackagesPackageCodelistsCodelistGet
    ;;
    mdrCtPackagesPackageCodelistsCodelistTermsGet)
    call_mdrCtPackagesPackageCodelistsCodelistTermsGet
    ;;
    mdrCtPackagesPackageCodelistsCodelistTermsTermGet)
    call_mdrCtPackagesPackageCodelistsCodelistTermsTermGet
    ;;
    mdrCtPackagesPackageCodelistsGet)
    call_mdrCtPackagesPackageCodelistsGet
    ;;
    mdrCtPackagesProductGet)
    call_mdrCtPackagesProductGet
    ;;
    mdrRootCtProductGroupCodelistsCodelistGet)
    call_mdrRootCtProductGroupCodelistsCodelistGet
    ;;
    mdrRootCtProductGroupCodelistsCodelistTermsTermGet)
    call_mdrRootCtProductGroupCodelistsCodelistTermsTermGet
    ;;
    mdrAboutGet)
    call_mdrAboutGet
    ;;
    mdrLastupdatedGet)
    call_mdrLastupdatedGet
    ;;
    mdrProductsDataAnalysisGet)
    call_mdrProductsDataAnalysisGet
    ;;
    mdrProductsDataCollectionGet)
    call_mdrProductsDataCollectionGet
    ;;
    mdrProductsDataTabulationGet)
    call_mdrProductsDataTabulationGet
    ;;
    mdrProductsGet)
    call_mdrProductsGet
    ;;
    mdrProductsMeasuresGet)
    call_mdrProductsMeasuresGet
    ;;
    mdrProductsTerminologyGet)
    call_mdrProductsTerminologyGet
    ;;
    mdrQrsMeasureVersionGet)
    call_mdrQrsMeasureVersionGet
    ;;
    mdrQrsMeasureVersionItemsGet)
    call_mdrQrsMeasureVersionItemsGet
    ;;
    mdrQrsMeasureVersionItemsItemGet)
    call_mdrQrsMeasureVersionItemsItemGet
    ;;
    mdrQrsMeasureVersionResponsegroupsGet)
    call_mdrQrsMeasureVersionResponsegroupsGet
    ;;
    mdrQrsMeasureVersionResponsegroupsResponsegroupGet)
    call_mdrQrsMeasureVersionResponsegroupsResponsegroupGet
    ;;
    mdrRootSdtmigDatasetsDatasetVariablesVarGet)
    call_mdrRootSdtmigDatasetsDatasetVariablesVarGet
    ;;
    mdrSdtmigVersionClassesClassDatasetsGet)
    call_mdrSdtmigVersionClassesClassDatasetsGet
    ;;
    mdrSdtmigVersionClassesClassGet)
    call_mdrSdtmigVersionClassesClassGet
    ;;
    mdrSdtmigVersionClassesGet)
    call_mdrSdtmigVersionClassesGet
    ;;
    mdrSdtmigVersionDatasetsDatasetGet)
    call_mdrSdtmigVersionDatasetsDatasetGet
    ;;
    mdrSdtmigVersionDatasetsDatasetVariablesGet)
    call_mdrSdtmigVersionDatasetsDatasetVariablesGet
    ;;
    mdrSdtmigVersionDatasetsDatasetVariablesVarGet)
    call_mdrSdtmigVersionDatasetsDatasetVariablesVarGet
    ;;
    mdrSdtmigVersionDatasetsGet)
    call_mdrSdtmigVersionDatasetsGet
    ;;
    mdrSdtmigVersionGet)
    call_mdrSdtmigVersionGet
    ;;
    mdrRootSendigDatasetsDatasetVariablesVarGet)
    call_mdrRootSendigDatasetsDatasetVariablesVarGet
    ;;
    mdrSendigVersionClassesClassDatasetsGet)
    call_mdrSendigVersionClassesClassDatasetsGet
    ;;
    mdrSendigVersionClassesClassGet)
    call_mdrSendigVersionClassesClassGet
    ;;
    mdrSendigVersionClassesGet)
    call_mdrSendigVersionClassesGet
    ;;
    mdrSendigVersionDatasetsDatasetGet)
    call_mdrSendigVersionDatasetsDatasetGet
    ;;
    mdrSendigVersionDatasetsDatasetVariablesGet)
    call_mdrSendigVersionDatasetsDatasetVariablesGet
    ;;
    mdrSendigVersionDatasetsDatasetVariablesVarGet)
    call_mdrSendigVersionDatasetsDatasetVariablesVarGet
    ;;
    mdrSendigVersionDatasetsGet)
    call_mdrSendigVersionDatasetsGet
    ;;
    mdrSendigVersionGet)
    call_mdrSendigVersionGet
    ;;
    mdrSearchGet)
    call_mdrSearchGet
    ;;
    mdrSearchScopesGet)
    call_mdrSearchScopesGet
    ;;
    mdrSearchScopesScopeGet)
    call_mdrSearchScopesScopeGet
    ;;
    healthGet)
    call_healthGet
    ;;
    mdrMaintenanceGet)
    call_mdrMaintenanceGet
    ;;
    mdrRootSdtmClassesClassVariablesVarGet)
    call_mdrRootSdtmClassesClassVariablesVarGet
    ;;
    mdrRootSdtmDatasetsDatasetVariablesVarGet)
    call_mdrRootSdtmDatasetsDatasetVariablesVarGet
    ;;
    mdrSdtmVersionClassesClassDatasetsGet)
    call_mdrSdtmVersionClassesClassDatasetsGet
    ;;
    mdrSdtmVersionClassesClassGet)
    call_mdrSdtmVersionClassesClassGet
    ;;
    mdrSdtmVersionClassesClassVariablesGet)
    call_mdrSdtmVersionClassesClassVariablesGet
    ;;
    mdrSdtmVersionClassesClassVariablesVarGet)
    call_mdrSdtmVersionClassesClassVariablesVarGet
    ;;
    mdrSdtmVersionClassesGet)
    call_mdrSdtmVersionClassesGet
    ;;
    mdrSdtmVersionDatasetsDatasetGet)
    call_mdrSdtmVersionDatasetsDatasetGet
    ;;
    mdrSdtmVersionDatasetsDatasetVariablesGet)
    call_mdrSdtmVersionDatasetsDatasetVariablesGet
    ;;
    mdrSdtmVersionDatasetsDatasetVariablesVarGet)
    call_mdrSdtmVersionDatasetsDatasetVariablesVarGet
    ;;
    mdrSdtmVersionDatasetsGet)
    call_mdrSdtmVersionDatasetsGet
    ;;
    mdrSdtmVersionGet)
    call_mdrSdtmVersionGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac

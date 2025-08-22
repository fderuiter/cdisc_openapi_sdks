
package org.openapitools.client.model


case class CdashDomainFieldLinks (
    _self: Option[CdashDomainFieldRef],
    _codelist: Option[List[RootCtCodelistRefElement]],
    _parentProduct: Option[CdashProductRef],
    _parentClass: Option[CdashClassRef],
    _parentDomain: Option[CdashDomainRef],
    _rootItem: Option[RootCdashDomainFieldRef],
    _priorVersion: Option[CdashDomainFieldRef],
    _sdtmDatasetMappingTargets: Option[List[SdtmDatasetVariableRefTarget]],
    _sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]]
)
object CdashDomainFieldLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_parentProduct: Object, var_parentClass: Object, var_parentDomain: Object, var_rootItem: Object, var_priorVersion: Object, var_sdtmDatasetMappingTargets: Object, var_sdtmigDatasetMappingTargets: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"parentDomain":$var_parentDomain,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion,"sdtmDatasetMappingTargets":$var_sdtmDatasetMappingTargets,"sdtmigDatasetMappingTargets":$var_sdtmigDatasetMappingTargets
        | }
        """.stripMargin
}

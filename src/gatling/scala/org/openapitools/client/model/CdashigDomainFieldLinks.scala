
package org.openapitools.client.model


case class CdashigDomainFieldLinks (
    _self: Option[CdashigDomainFieldRef],
    _codelist: Option[List[RootCtCodelistRefElement]],
    _parentProduct: Option[CdashigProductRef],
    _parentDomain: Option[CdashigDomainRef],
    _rootItem: Option[RootCdashigDomainFieldRef],
    _priorVersion: Option[CdashigDomainFieldRef],
    _sdtmClassMappingTargets: Option[List[SdtmClassVariableRefTarget]],
    _sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]]
)
object CdashigDomainFieldLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_parentProduct: Object, var_parentDomain: Object, var_rootItem: Object, var_priorVersion: Object, var_sdtmClassMappingTargets: Object, var_sdtmigDatasetMappingTargets: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"parentProduct":$var_parentProduct,"parentDomain":$var_parentDomain,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion,"sdtmClassMappingTargets":$var_sdtmClassMappingTargets,"sdtmigDatasetMappingTargets":$var_sdtmigDatasetMappingTargets
        | }
        """.stripMargin
}

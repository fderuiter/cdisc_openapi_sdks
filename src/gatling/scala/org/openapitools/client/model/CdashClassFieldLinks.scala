
package org.openapitools.client.model


case class CdashClassFieldLinks (
    _self: Option[CdashClassFieldRef],
    _codelist: Option[List[RootCtCodelistRefElement]],
    _parentProduct: Option[CdashProductRef],
    _parentClass: Option[CdashClassRef],
    _rootItem: Option[RootCdashClassFieldRef],
    _priorVersion: Option[CdashClassFieldRef],
    _sdtmClassMappingTargets: Option[List[SdtmClassVariableRefTarget]],
    _sdtmDatasetMappingTargets: Option[List[SdtmDatasetVariableRefTarget]]
)
object CdashClassFieldLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_parentProduct: Object, var_parentClass: Object, var_rootItem: Object, var_priorVersion: Object, var_sdtmClassMappingTargets: Object, var_sdtmDatasetMappingTargets: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion,"sdtmClassMappingTargets":$var_sdtmClassMappingTargets,"sdtmDatasetMappingTargets":$var_sdtmDatasetMappingTargets
        | }
        """.stripMargin
}

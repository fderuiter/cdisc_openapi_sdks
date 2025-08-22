
package org.openapitools.client.model


case class CdashigScenarioFieldLinks (
    _self: Option[CdashigScenarioFieldRef],
    _codelist: Option[List[RootCtCodelistRefElement]],
    _parentProduct: Option[CdashigProductRef],
    _parentDomain: Option[CdashigDomainRef],
    _parentScenario: Option[CdashigScenarioRef],
    _rootItem: Option[RootCdashigScenarioFieldRef],
    _priorVersion: Option[CdashigScenarioFieldRef],
    _sdtmigDatasetMappingTargets: Option[List[SdtmigDatasetVariableRefTarget]]
)
object CdashigScenarioFieldLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_parentProduct: Object, var_parentDomain: Object, var_parentScenario: Object, var_rootItem: Object, var_priorVersion: Object, var_sdtmigDatasetMappingTargets: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"parentProduct":$var_parentProduct,"parentDomain":$var_parentDomain,"parentScenario":$var_parentScenario,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion,"sdtmigDatasetMappingTargets":$var_sdtmigDatasetMappingTargets
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class ExportCdashigTable (
    _domainVariables: Option[List[ExportCdashigDomainVariablesRow]],
    _scenarioVariables: Option[List[ExportCdashigScenarioVariablesRow]]
)
object ExportCdashigTable {
    def toStringBody(var_domainVariables: Object, var_scenarioVariables: Object) =
        s"""
        | {
        | "domainVariables":$var_domainVariables,"scenarioVariables":$var_scenarioVariables
        | }
        """.stripMargin
}

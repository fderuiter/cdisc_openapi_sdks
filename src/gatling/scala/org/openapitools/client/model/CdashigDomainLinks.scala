
package org.openapitools.client.model


case class CdashigDomainLinks (
    _self: Option[CdashigDomainRef],
    _parentProduct: Option[CdashigProductRef],
    _parentClass: Option[CdashigClassRef],
    _priorVersion: Option[CdashigDomainRef],
    _scenarios: Option[List[CdashigScenarioRefElement]]
)
object CdashigDomainLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_priorVersion: Object, var_scenarios: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"priorVersion":$var_priorVersion,"scenarios":$var_scenarios
        | }
        """.stripMargin
}

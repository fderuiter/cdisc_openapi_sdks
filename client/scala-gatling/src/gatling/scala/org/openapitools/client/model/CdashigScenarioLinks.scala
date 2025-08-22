
package org.openapitools.client.model


case class CdashigScenarioLinks (
    _self: Option[CdashigScenarioRef],
    _parentProduct: Option[CdashigProductRef],
    _parentClass: Option[CdashigClassRef],
    _parentDomain: Option[CdashigDomainRef],
    _priorVersion: Option[CdashigScenarioRef]
)
object CdashigScenarioLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_parentDomain: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"parentDomain":$var_parentDomain,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

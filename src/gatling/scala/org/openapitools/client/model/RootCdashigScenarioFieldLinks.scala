
package org.openapitools.client.model


case class RootCdashigScenarioFieldLinks (
    _self: Option[RootCdashigScenarioFieldRef],
    _versions: Option[List[CdashigScenarioFieldRefVersion]]
)
object RootCdashigScenarioFieldLinks {
    def toStringBody(var_self: Object, var_versions: Object) =
        s"""
        | {
        | "self":$var_self,"versions":$var_versions
        | }
        """.stripMargin
}

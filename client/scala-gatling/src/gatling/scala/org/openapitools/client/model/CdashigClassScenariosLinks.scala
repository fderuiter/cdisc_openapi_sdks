
package org.openapitools.client.model


case class CdashigClassScenariosLinks (
    _self: Option[CdashigClassScenariosRef],
    _scenarios: Option[List[CdashigScenarioRefElement]]
)
object CdashigClassScenariosLinks {
    def toStringBody(var_self: Object, var_scenarios: Object) =
        s"""
        | {
        | "self":$var_self,"scenarios":$var_scenarios
        | }
        """.stripMargin
}

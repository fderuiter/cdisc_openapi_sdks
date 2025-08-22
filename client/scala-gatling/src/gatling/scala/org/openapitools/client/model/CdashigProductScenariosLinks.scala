
package org.openapitools.client.model


case class CdashigProductScenariosLinks (
    _self: Option[CdashigProductScenariosRef],
    _parentProduct: Option[CdashigProductRef],
    _scenarios: Option[List[CdashigScenarioRefElement]]
)
object CdashigProductScenariosLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_scenarios: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"scenarios":$var_scenarios
        | }
        """.stripMargin
}

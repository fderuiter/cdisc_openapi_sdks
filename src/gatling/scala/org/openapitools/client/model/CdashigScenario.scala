
package org.openapitools.client.model


case class CdashigScenario (
    _ordinal: Option[String],
    _domain: Option[String],
    _scenario: Option[String],
    _links: Option[CdashigScenarioLinks],
    _fields: Option[List[CdashigScenarioField]]
)
object CdashigScenario {
    def toStringBody(var_ordinal: Object, var_domain: Object, var_scenario: Object, var_links: Object, var_fields: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"domain":$var_domain,"scenario":$var_scenario,"links":$var_links,"fields":$var_fields
        | }
        """.stripMargin
}

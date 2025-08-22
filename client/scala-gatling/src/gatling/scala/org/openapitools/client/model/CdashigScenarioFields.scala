
package org.openapitools.client.model


case class CdashigScenarioFields (
    _ordinal: Option[String],
    _domain: Option[String],
    _scenario: Option[String],
    _links: Option[CdashigScenarioFieldsLinks]
)
object CdashigScenarioFields {
    def toStringBody(var_ordinal: Object, var_domain: Object, var_scenario: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"domain":$var_domain,"scenario":$var_scenario,"links":$var_links
        | }
        """.stripMargin
}

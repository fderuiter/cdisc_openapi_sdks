
package org.openapitools.client.model


case class CdashigClass (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _links: Option[CdashigClassLinks],
    _domains: Option[List[CdashigDomain]],
    _scenarios: Option[List[CdashigScenario]]
)
object CdashigClass {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_links: Object, var_domains: Object, var_scenarios: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"links":$var_links,"domains":$var_domains,"scenarios":$var_scenarios
        | }
        """.stripMargin
}

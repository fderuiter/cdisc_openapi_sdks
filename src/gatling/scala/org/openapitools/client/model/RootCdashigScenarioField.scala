
package org.openapitools.client.model


case class RootCdashigScenarioField (
    _links: Option[RootCdashigScenarioFieldLinks]
)
object RootCdashigScenarioField {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class RootCdashClassField (
    _links: Option[RootCdashClassFieldLinks]
)
object RootCdashClassField {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

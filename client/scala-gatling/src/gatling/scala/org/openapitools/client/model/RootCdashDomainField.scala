
package org.openapitools.client.model


case class RootCdashDomainField (
    _links: Option[RootCdashDomainFieldLinks]
)
object RootCdashDomainField {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

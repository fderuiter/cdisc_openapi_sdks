
package org.openapitools.client.model


case class RootCdashigDomainField (
    _links: Option[RootCdashigDomainFieldLinks]
)
object RootCdashigDomainField {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class CtPackages (
    _links: Option[CtPackagesLinks]
)
object CtPackages {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

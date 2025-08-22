
package org.openapitools.client.model


case class RootCtTerm (
    _links: Option[RootCtTermLinks]
)
object RootCtTerm {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

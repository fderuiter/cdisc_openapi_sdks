
package org.openapitools.client.model


case class RootCtCodelist (
    _links: Option[RootCtCodelistLinks]
)
object RootCtCodelist {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

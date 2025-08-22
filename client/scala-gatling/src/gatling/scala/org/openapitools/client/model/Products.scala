
package org.openapitools.client.model


case class Products (
    _links: Option[ProductsLinks]
)
object Products {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

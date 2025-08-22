
package org.openapitools.client.model


case class ProductgroupDataCollection (
    _links: Option[ProductgroupDataCollectionLinks]
)
object ProductgroupDataCollection {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

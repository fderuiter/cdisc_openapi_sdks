
package org.openapitools.client.model


case class ProductgroupQrs (
    _links: Option[ProductgroupQrsLinks]
)
object ProductgroupQrs {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}


package org.openapitools.client.model


case class ProductgroupDataTabulation (
    _links: Option[ProductgroupDataTabulationLinks]
)
object ProductgroupDataTabulation {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

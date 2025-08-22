
package org.openapitools.client.model


case class ProductgroupTerminology (
    _links: Option[ProductgroupTerminologyLinks]
)
object ProductgroupTerminology {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

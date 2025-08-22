
package org.openapitools.client.model


case class ProductgroupDataAnalysis (
    _links: Option[ProductgroupDataAnalysisLinks]
)
object ProductgroupDataAnalysis {
    def toStringBody(var_links: Object) =
        s"""
        | {
        | "links":$var_links
        | }
        """.stripMargin
}

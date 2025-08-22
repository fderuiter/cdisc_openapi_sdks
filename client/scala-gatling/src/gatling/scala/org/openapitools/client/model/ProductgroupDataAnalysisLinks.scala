
package org.openapitools.client.model


case class ProductgroupDataAnalysisLinks (
    _self: Option[ProductgroupRef],
    _adam: Option[List[AdamProductRefElement]]
)
object ProductgroupDataAnalysisLinks {
    def toStringBody(var_self: Object, var_adam: Object) =
        s"""
        | {
        | "self":$var_self,"adam":$var_adam
        | }
        """.stripMargin
}

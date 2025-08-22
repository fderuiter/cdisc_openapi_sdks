
package org.openapitools.client.model


case class ProductgroupQrsLinks (
    _self: Option[ProductgroupRef],
    _qrs: Option[List[QrsRefElement]]
)
object ProductgroupQrsLinks {
    def toStringBody(var_self: Object, var_qrs: Object) =
        s"""
        | {
        | "self":$var_self,"qrs":$var_qrs
        | }
        """.stripMargin
}

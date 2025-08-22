
package org.openapitools.client.model


case class ProductgroupTerminologyLinks (
    _self: Option[ProductgroupRef],
    _packages: Option[List[CtPackageRefElement]]
)
object ProductgroupTerminologyLinks {
    def toStringBody(var_self: Object, var_packages: Object) =
        s"""
        | {
        | "self":$var_self,"packages":$var_packages
        | }
        """.stripMargin
}

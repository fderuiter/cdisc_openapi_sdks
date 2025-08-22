
package org.openapitools.client.model


case class CtPackagesLinks (
    _self: Option[CtPackagesRef],
    _packages: Option[List[CtPackageRefElement]]
)
object CtPackagesLinks {
    def toStringBody(var_self: Object, var_packages: Object) =
        s"""
        | {
        | "self":$var_self,"packages":$var_packages
        | }
        """.stripMargin
}

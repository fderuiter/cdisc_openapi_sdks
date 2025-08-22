
package org.openapitools.client.model


case class CdashProductClassesLinks (
    _self: Option[CdashProductClassesRef],
    _parentProduct: Option[CdashProductRef],
    _classes: Option[List[CdashClassRefElement]]
)
object CdashProductClassesLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_classes: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"classes":$var_classes
        | }
        """.stripMargin
}

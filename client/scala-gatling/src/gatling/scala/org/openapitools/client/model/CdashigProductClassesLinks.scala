
package org.openapitools.client.model


case class CdashigProductClassesLinks (
    _self: Option[CdashigProductClassesRef],
    _parentProduct: Option[CdashigProductRef],
    _classes: Option[List[CdashigClassRefElement]]
)
object CdashigProductClassesLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_classes: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"classes":$var_classes
        | }
        """.stripMargin
}

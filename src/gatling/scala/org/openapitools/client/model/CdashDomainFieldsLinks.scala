
package org.openapitools.client.model


case class CdashDomainFieldsLinks (
    _self: Option[CdashDomainFieldsRef],
    _parentProduct: Option[CdashProductRef],
    _parentClass: Option[CdashClassRef],
    _fields: Option[List[CdashDomainFieldRefElement]]
)
object CdashDomainFieldsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_fields: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"fields":$var_fields
        | }
        """.stripMargin
}

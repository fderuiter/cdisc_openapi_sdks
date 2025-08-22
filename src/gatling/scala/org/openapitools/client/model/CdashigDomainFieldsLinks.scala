
package org.openapitools.client.model


case class CdashigDomainFieldsLinks (
    _self: Option[CdashigDomainFieldsRef],
    _parentProduct: Option[CdashigProductRef],
    _parentClass: Option[CdashigClassRef],
    _fields: Option[List[CdashigDomainFieldRefElement]]
)
object CdashigDomainFieldsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_fields: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"fields":$var_fields
        | }
        """.stripMargin
}

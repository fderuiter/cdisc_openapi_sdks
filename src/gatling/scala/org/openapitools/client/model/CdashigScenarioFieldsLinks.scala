
package org.openapitools.client.model


case class CdashigScenarioFieldsLinks (
    _self: Option[CdashigScenarioFieldsRef],
    _parentProduct: Option[CdashigProductRef],
    _parentClass: Option[CdashigClassRef],
    _parentDomain: Option[CdashigDomainRef],
    _fields: Option[List[CdashigScenarioFieldRefElement]]
)
object CdashigScenarioFieldsLinks {
    def toStringBody(var_self: Object, var_parentProduct: Object, var_parentClass: Object, var_parentDomain: Object, var_fields: Object) =
        s"""
        | {
        | "self":$var_self,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"parentDomain":$var_parentDomain,"fields":$var_fields
        | }
        """.stripMargin
}

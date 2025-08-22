
package org.openapitools.client.model


case class CdashigClassLinks (
    _self: Option[CdashigClassRef],
    _modelClass: Option[CdashClassRef],
    _parentProduct: Option[CdashigProductRef],
    _parentClass: Option[CdashigClassRef],
    _subclasses: Option[List[CdashigClassRefSubclass]],
    _priorVersion: Option[CdashigClassRef]
)
object CdashigClassLinks {
    def toStringBody(var_self: Object, var_modelClass: Object, var_parentProduct: Object, var_parentClass: Object, var_subclasses: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"modelClass":$var_modelClass,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"subclasses":$var_subclasses,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

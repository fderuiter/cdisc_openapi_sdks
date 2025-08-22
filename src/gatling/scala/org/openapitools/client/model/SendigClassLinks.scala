
package org.openapitools.client.model


case class SendigClassLinks (
    _self: Option[SendigClassRef],
    _modelClass: Option[SdtmClassRef],
    _parentProduct: Option[SendigProductRef],
    _parentClass: Option[SendigClassRef],
    _subclasses: Option[List[SendigClassRefSubclass]],
    _priorVersion: Option[SendigClassRef]
)
object SendigClassLinks {
    def toStringBody(var_self: Object, var_modelClass: Object, var_parentProduct: Object, var_parentClass: Object, var_subclasses: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"modelClass":$var_modelClass,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"subclasses":$var_subclasses,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

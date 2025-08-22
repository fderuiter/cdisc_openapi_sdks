
package org.openapitools.client.model


case class SdtmigClassLinks (
    _self: Option[SdtmigClassRef],
    _modelClass: Option[SdtmClassRef],
    _parentProduct: Option[SdtmigProductRef],
    _parentClass: Option[SdtmigClassRef],
    _subclasses: Option[List[SdtmigClassRefSubclass]],
    _priorVersion: Option[SdtmigClassRef]
)
object SdtmigClassLinks {
    def toStringBody(var_self: Object, var_modelClass: Object, var_parentProduct: Object, var_parentClass: Object, var_subclasses: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"modelClass":$var_modelClass,"parentProduct":$var_parentProduct,"parentClass":$var_parentClass,"subclasses":$var_subclasses,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

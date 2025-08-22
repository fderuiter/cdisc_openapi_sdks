
package org.openapitools.client.model


case class ScopeValues (
    _total: Option[Number],
    _hasMore: Option[Boolean],
    _values: Option[List[String]]
)
object ScopeValues {
    def toStringBody(var_total: Object, var_hasMore: Object, var_values: Object) =
        s"""
        | {
        | "total":$var_total,"hasMore":$var_hasMore,"values":$var_values
        | }
        """.stripMargin
}

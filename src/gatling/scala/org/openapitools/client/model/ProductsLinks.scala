
package org.openapitools.client.model


case class ProductsLinks (
    _self: Option[ProductsRef],
    _dataCollection: Option[ProductgroupDataCollection],
    _dataTabulation: Option[ProductgroupDataTabulation],
    _dataAnalysis: Option[ProductgroupDataAnalysis],
    _terminology: Option[ProductgroupTerminology],
    _measure: Option[ProductgroupQrs]
)
object ProductsLinks {
    def toStringBody(var_self: Object, var_dataCollection: Object, var_dataTabulation: Object, var_dataAnalysis: Object, var_terminology: Object, var_measure: Object) =
        s"""
        | {
        | "self":$var_self,"dataCollection":$var_dataCollection,"dataTabulation":$var_dataTabulation,"dataAnalysis":$var_dataAnalysis,"terminology":$var_terminology,"measure":$var_measure
        | }
        """.stripMargin
}

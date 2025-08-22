
package org.openapitools.client.model


case class QrsResponseLinks (
    _qrsResponseORRES: Option[RootCtTermRef],
    _qrsResponseORRESU: Option[RootCtTermRef],
    _qrsResponseSTRESC: Option[RootCtTermRef],
    _qrsResponseSTRESCU: Option[RootCtTermRef]
)
object QrsResponseLinks {
    def toStringBody(var_qrsResponseORRES: Object, var_qrsResponseORRESU: Object, var_qrsResponseSTRESC: Object, var_qrsResponseSTRESCU: Object) =
        s"""
        | {
        | "qrsResponseORRES":$var_qrsResponseORRES,"qrsResponseORRESU":$var_qrsResponseORRESU,"qrsResponseSTRESC":$var_qrsResponseSTRESC,"qrsResponseSTRESCU":$var_qrsResponseSTRESCU
        | }
        """.stripMargin
}

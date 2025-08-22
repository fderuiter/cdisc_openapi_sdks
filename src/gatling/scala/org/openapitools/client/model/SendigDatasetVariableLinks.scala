
package org.openapitools.client.model


case class SendigDatasetVariableLinks (
    _self: Option[SendigDatasetVariableRef],
    _codelist: Option[List[RootCtCodelistRefElement]],
    _modelClassVariable: Option[SdtmClassVariableRef],
    _modelDatasetVariable: Option[SdtmDatasetVariableRef],
    _parentProduct: Option[SendigProductRef],
    _parentDataset: Option[SendigDatasetRef],
    _rootItem: Option[RootSendigDatasetVariableRef],
    _priorVersion: Option[SendigDatasetVariableRef]
)
object SendigDatasetVariableLinks {
    def toStringBody(var_self: Object, var_codelist: Object, var_modelClassVariable: Object, var_modelDatasetVariable: Object, var_parentProduct: Object, var_parentDataset: Object, var_rootItem: Object, var_priorVersion: Object) =
        s"""
        | {
        | "self":$var_self,"codelist":$var_codelist,"modelClassVariable":$var_modelClassVariable,"modelDatasetVariable":$var_modelDatasetVariable,"parentProduct":$var_parentProduct,"parentDataset":$var_parentDataset,"rootItem":$var_rootItem,"priorVersion":$var_priorVersion
        | }
        """.stripMargin
}

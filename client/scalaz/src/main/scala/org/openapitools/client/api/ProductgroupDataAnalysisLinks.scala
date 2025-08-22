package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupDataAnalysisLinks._

case class ProductgroupDataAnalysisLinks (
  self: Option[ProductgroupRef],
adam: Option[List[AdamProductRefElement]])

object ProductgroupDataAnalysisLinks {
  import DateTimeCodecs._

  implicit val ProductgroupDataAnalysisLinksCodecJson: CodecJson[ProductgroupDataAnalysisLinks] = CodecJson.derive[ProductgroupDataAnalysisLinks]
  implicit val ProductgroupDataAnalysisLinksDecoder: EntityDecoder[ProductgroupDataAnalysisLinks] = jsonOf[ProductgroupDataAnalysisLinks]
  implicit val ProductgroupDataAnalysisLinksEncoder: EntityEncoder[ProductgroupDataAnalysisLinks] = jsonEncoderOf[ProductgroupDataAnalysisLinks]
}

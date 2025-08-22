package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlProductgroupDataAnalysis._

case class XmlProductgroupDataAnalysis (
  self: Option[ProductgroupDataAnalysis])

object XmlProductgroupDataAnalysis {
  import DateTimeCodecs._

  implicit val XmlProductgroupDataAnalysisCodecJson: CodecJson[XmlProductgroupDataAnalysis] = CodecJson.derive[XmlProductgroupDataAnalysis]
  implicit val XmlProductgroupDataAnalysisDecoder: EntityDecoder[XmlProductgroupDataAnalysis] = jsonOf[XmlProductgroupDataAnalysis]
  implicit val XmlProductgroupDataAnalysisEncoder: EntityEncoder[XmlProductgroupDataAnalysis] = jsonEncoderOf[XmlProductgroupDataAnalysis]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupTerminology._

case class ProductgroupTerminology (
  links: Option[ProductgroupTerminologyLinks])

object ProductgroupTerminology {
  import DateTimeCodecs._

  implicit val ProductgroupTerminologyCodecJson: CodecJson[ProductgroupTerminology] = CodecJson.derive[ProductgroupTerminology]
  implicit val ProductgroupTerminologyDecoder: EntityDecoder[ProductgroupTerminology] = jsonOf[ProductgroupTerminology]
  implicit val ProductgroupTerminologyEncoder: EntityEncoder[ProductgroupTerminology] = jsonEncoderOf[ProductgroupTerminology]
}

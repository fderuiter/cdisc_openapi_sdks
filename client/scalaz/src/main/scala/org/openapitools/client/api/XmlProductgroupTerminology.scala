package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlProductgroupTerminology._

case class XmlProductgroupTerminology (
  self: Option[ProductgroupTerminology])

object XmlProductgroupTerminology {
  import DateTimeCodecs._

  implicit val XmlProductgroupTerminologyCodecJson: CodecJson[XmlProductgroupTerminology] = CodecJson.derive[XmlProductgroupTerminology]
  implicit val XmlProductgroupTerminologyDecoder: EntityDecoder[XmlProductgroupTerminology] = jsonOf[XmlProductgroupTerminology]
  implicit val XmlProductgroupTerminologyEncoder: EntityEncoder[XmlProductgroupTerminology] = jsonEncoderOf[XmlProductgroupTerminology]
}

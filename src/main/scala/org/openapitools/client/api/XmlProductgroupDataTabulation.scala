package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlProductgroupDataTabulation._

case class XmlProductgroupDataTabulation (
  self: Option[ProductgroupDataTabulation])

object XmlProductgroupDataTabulation {
  import DateTimeCodecs._

  implicit val XmlProductgroupDataTabulationCodecJson: CodecJson[XmlProductgroupDataTabulation] = CodecJson.derive[XmlProductgroupDataTabulation]
  implicit val XmlProductgroupDataTabulationDecoder: EntityDecoder[XmlProductgroupDataTabulation] = jsonOf[XmlProductgroupDataTabulation]
  implicit val XmlProductgroupDataTabulationEncoder: EntityEncoder[XmlProductgroupDataTabulation] = jsonEncoderOf[XmlProductgroupDataTabulation]
}

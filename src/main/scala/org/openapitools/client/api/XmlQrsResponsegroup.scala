package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlQrsResponsegroup._

case class XmlQrsResponsegroup (
  self: Option[QrsResponsegroup])

object XmlQrsResponsegroup {
  import DateTimeCodecs._

  implicit val XmlQrsResponsegroupCodecJson: CodecJson[XmlQrsResponsegroup] = CodecJson.derive[XmlQrsResponsegroup]
  implicit val XmlQrsResponsegroupDecoder: EntityDecoder[XmlQrsResponsegroup] = jsonOf[XmlQrsResponsegroup]
  implicit val XmlQrsResponsegroupEncoder: EntityEncoder[XmlQrsResponsegroup] = jsonEncoderOf[XmlQrsResponsegroup]
}

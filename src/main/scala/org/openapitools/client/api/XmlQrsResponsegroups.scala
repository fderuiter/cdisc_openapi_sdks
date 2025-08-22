package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlQrsResponsegroups._

case class XmlQrsResponsegroups (
  self: Option[QrsResponsegroups])

object XmlQrsResponsegroups {
  import DateTimeCodecs._

  implicit val XmlQrsResponsegroupsCodecJson: CodecJson[XmlQrsResponsegroups] = CodecJson.derive[XmlQrsResponsegroups]
  implicit val XmlQrsResponsegroupsDecoder: EntityDecoder[XmlQrsResponsegroups] = jsonOf[XmlQrsResponsegroups]
  implicit val XmlQrsResponsegroupsEncoder: EntityEncoder[XmlQrsResponsegroups] = jsonEncoderOf[XmlQrsResponsegroups]
}

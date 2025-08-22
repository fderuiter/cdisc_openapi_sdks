package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponsegroupRefElement._

case class QrsResponsegroupRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsResponsegroupRefElement {
  import DateTimeCodecs._

  implicit val QrsResponsegroupRefElementCodecJson: CodecJson[QrsResponsegroupRefElement] = CodecJson.derive[QrsResponsegroupRefElement]
  implicit val QrsResponsegroupRefElementDecoder: EntityDecoder[QrsResponsegroupRefElement] = jsonOf[QrsResponsegroupRefElement]
  implicit val QrsResponsegroupRefElementEncoder: EntityEncoder[QrsResponsegroupRefElement] = jsonEncoderOf[QrsResponsegroupRefElement]
}

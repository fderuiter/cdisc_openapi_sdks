package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsResponsegroupsRef._

case class QrsResponsegroupsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsResponsegroupsRef {
  import DateTimeCodecs._

  implicit val QrsResponsegroupsRefCodecJson: CodecJson[QrsResponsegroupsRef] = CodecJson.derive[QrsResponsegroupsRef]
  implicit val QrsResponsegroupsRefDecoder: EntityDecoder[QrsResponsegroupsRef] = jsonOf[QrsResponsegroupsRef]
  implicit val QrsResponsegroupsRefEncoder: EntityEncoder[QrsResponsegroupsRef] = jsonEncoderOf[QrsResponsegroupsRef]
}

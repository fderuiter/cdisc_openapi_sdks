package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItemRefElement._

case class QrsItemRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsItemRefElement {
  import DateTimeCodecs._

  implicit val QrsItemRefElementCodecJson: CodecJson[QrsItemRefElement] = CodecJson.derive[QrsItemRefElement]
  implicit val QrsItemRefElementDecoder: EntityDecoder[QrsItemRefElement] = jsonOf[QrsItemRefElement]
  implicit val QrsItemRefElementEncoder: EntityEncoder[QrsItemRefElement] = jsonEncoderOf[QrsItemRefElement]
}

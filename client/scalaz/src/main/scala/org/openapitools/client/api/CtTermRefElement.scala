package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtTermRefElement._

case class CtTermRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtTermRefElement {
  import DateTimeCodecs._

  implicit val CtTermRefElementCodecJson: CodecJson[CtTermRefElement] = CodecJson.derive[CtTermRefElement]
  implicit val CtTermRefElementDecoder: EntityDecoder[CtTermRefElement] = jsonOf[CtTermRefElement]
  implicit val CtTermRefElementEncoder: EntityEncoder[CtTermRefElement] = jsonEncoderOf[CtTermRefElement]
}

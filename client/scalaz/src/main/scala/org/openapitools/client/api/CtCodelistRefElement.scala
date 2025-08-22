package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CtCodelistRefElement._

case class CtCodelistRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CtCodelistRefElement {
  import DateTimeCodecs._

  implicit val CtCodelistRefElementCodecJson: CodecJson[CtCodelistRefElement] = CodecJson.derive[CtCodelistRefElement]
  implicit val CtCodelistRefElementDecoder: EntityDecoder[CtCodelistRefElement] = jsonOf[CtCodelistRefElement]
  implicit val CtCodelistRefElementEncoder: EntityEncoder[CtCodelistRefElement] = jsonEncoderOf[CtCodelistRefElement]
}

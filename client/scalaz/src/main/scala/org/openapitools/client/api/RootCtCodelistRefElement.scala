package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtCodelistRefElement._

case class RootCtCodelistRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCtCodelistRefElement {
  import DateTimeCodecs._

  implicit val RootCtCodelistRefElementCodecJson: CodecJson[RootCtCodelistRefElement] = CodecJson.derive[RootCtCodelistRefElement]
  implicit val RootCtCodelistRefElementDecoder: EntityDecoder[RootCtCodelistRefElement] = jsonOf[RootCtCodelistRefElement]
  implicit val RootCtCodelistRefElementEncoder: EntityEncoder[RootCtCodelistRefElement] = jsonEncoderOf[RootCtCodelistRefElement]
}

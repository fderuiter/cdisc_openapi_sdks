package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigProductRefElement._

case class SdtmigProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigProductRefElement {
  import DateTimeCodecs._

  implicit val SdtmigProductRefElementCodecJson: CodecJson[SdtmigProductRefElement] = CodecJson.derive[SdtmigProductRefElement]
  implicit val SdtmigProductRefElementDecoder: EntityDecoder[SdtmigProductRefElement] = jsonOf[SdtmigProductRefElement]
  implicit val SdtmigProductRefElementEncoder: EntityEncoder[SdtmigProductRefElement] = jsonEncoderOf[SdtmigProductRefElement]
}

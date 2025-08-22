package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmProductRefElement._

case class SdtmProductRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmProductRefElement {
  import DateTimeCodecs._

  implicit val SdtmProductRefElementCodecJson: CodecJson[SdtmProductRefElement] = CodecJson.derive[SdtmProductRefElement]
  implicit val SdtmProductRefElementDecoder: EntityDecoder[SdtmProductRefElement] = jsonOf[SdtmProductRefElement]
  implicit val SdtmProductRefElementEncoder: EntityEncoder[SdtmProductRefElement] = jsonEncoderOf[SdtmProductRefElement]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassRefElement._

case class SdtmClassRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassRefElement {
  import DateTimeCodecs._

  implicit val SdtmClassRefElementCodecJson: CodecJson[SdtmClassRefElement] = CodecJson.derive[SdtmClassRefElement]
  implicit val SdtmClassRefElementDecoder: EntityDecoder[SdtmClassRefElement] = jsonOf[SdtmClassRefElement]
  implicit val SdtmClassRefElementEncoder: EntityEncoder[SdtmClassRefElement] = jsonEncoderOf[SdtmClassRefElement]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassRefElement._

case class SdtmigClassRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigClassRefElement {
  import DateTimeCodecs._

  implicit val SdtmigClassRefElementCodecJson: CodecJson[SdtmigClassRefElement] = CodecJson.derive[SdtmigClassRefElement]
  implicit val SdtmigClassRefElementDecoder: EntityDecoder[SdtmigClassRefElement] = jsonOf[SdtmigClassRefElement]
  implicit val SdtmigClassRefElementEncoder: EntityEncoder[SdtmigClassRefElement] = jsonEncoderOf[SdtmigClassRefElement]
}

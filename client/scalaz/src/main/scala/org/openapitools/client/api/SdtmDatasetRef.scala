package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetRef._

case class SdtmDatasetRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetRef {
  import DateTimeCodecs._

  implicit val SdtmDatasetRefCodecJson: CodecJson[SdtmDatasetRef] = CodecJson.derive[SdtmDatasetRef]
  implicit val SdtmDatasetRefDecoder: EntityDecoder[SdtmDatasetRef] = jsonOf[SdtmDatasetRef]
  implicit val SdtmDatasetRefEncoder: EntityEncoder[SdtmDatasetRef] = jsonEncoderOf[SdtmDatasetRef]
}

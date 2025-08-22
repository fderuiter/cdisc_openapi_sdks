package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariablesRef._

case class SdtmDatasetVariablesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetVariablesRef {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariablesRefCodecJson: CodecJson[SdtmDatasetVariablesRef] = CodecJson.derive[SdtmDatasetVariablesRef]
  implicit val SdtmDatasetVariablesRefDecoder: EntityDecoder[SdtmDatasetVariablesRef] = jsonOf[SdtmDatasetVariablesRef]
  implicit val SdtmDatasetVariablesRefEncoder: EntityEncoder[SdtmDatasetVariablesRef] = jsonEncoderOf[SdtmDatasetVariablesRef]
}

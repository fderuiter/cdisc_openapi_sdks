package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariablesRef._

case class SdtmigDatasetVariablesRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetVariablesRef {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariablesRefCodecJson: CodecJson[SdtmigDatasetVariablesRef] = CodecJson.derive[SdtmigDatasetVariablesRef]
  implicit val SdtmigDatasetVariablesRefDecoder: EntityDecoder[SdtmigDatasetVariablesRef] = jsonOf[SdtmigDatasetVariablesRef]
  implicit val SdtmigDatasetVariablesRefEncoder: EntityEncoder[SdtmigDatasetVariablesRef] = jsonEncoderOf[SdtmigDatasetVariablesRef]
}

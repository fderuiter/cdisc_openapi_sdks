package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariableRef._

case class SdtmDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetVariableRef {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableRefCodecJson: CodecJson[SdtmDatasetVariableRef] = CodecJson.derive[SdtmDatasetVariableRef]
  implicit val SdtmDatasetVariableRefDecoder: EntityDecoder[SdtmDatasetVariableRef] = jsonOf[SdtmDatasetVariableRef]
  implicit val SdtmDatasetVariableRefEncoder: EntityEncoder[SdtmDatasetVariableRef] = jsonEncoderOf[SdtmDatasetVariableRef]
}

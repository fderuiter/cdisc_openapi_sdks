package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariableRefTarget._

case class SdtmDatasetVariableRefTarget (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetVariableRefTarget {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableRefTargetCodecJson: CodecJson[SdtmDatasetVariableRefTarget] = CodecJson.derive[SdtmDatasetVariableRefTarget]
  implicit val SdtmDatasetVariableRefTargetDecoder: EntityDecoder[SdtmDatasetVariableRefTarget] = jsonOf[SdtmDatasetVariableRefTarget]
  implicit val SdtmDatasetVariableRefTargetEncoder: EntityEncoder[SdtmDatasetVariableRefTarget] = jsonEncoderOf[SdtmDatasetVariableRefTarget]
}

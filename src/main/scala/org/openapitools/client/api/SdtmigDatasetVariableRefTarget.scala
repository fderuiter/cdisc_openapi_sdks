package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariableRefTarget._

case class SdtmigDatasetVariableRefTarget (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetVariableRefTarget {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableRefTargetCodecJson: CodecJson[SdtmigDatasetVariableRefTarget] = CodecJson.derive[SdtmigDatasetVariableRefTarget]
  implicit val SdtmigDatasetVariableRefTargetDecoder: EntityDecoder[SdtmigDatasetVariableRefTarget] = jsonOf[SdtmigDatasetVariableRefTarget]
  implicit val SdtmigDatasetVariableRefTargetEncoder: EntityEncoder[SdtmigDatasetVariableRefTarget] = jsonEncoderOf[SdtmigDatasetVariableRefTarget]
}

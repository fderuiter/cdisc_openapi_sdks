package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariableRefElement._

case class SdtmDatasetVariableRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetVariableRefElement {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableRefElementCodecJson: CodecJson[SdtmDatasetVariableRefElement] = CodecJson.derive[SdtmDatasetVariableRefElement]
  implicit val SdtmDatasetVariableRefElementDecoder: EntityDecoder[SdtmDatasetVariableRefElement] = jsonOf[SdtmDatasetVariableRefElement]
  implicit val SdtmDatasetVariableRefElementEncoder: EntityEncoder[SdtmDatasetVariableRefElement] = jsonEncoderOf[SdtmDatasetVariableRefElement]
}

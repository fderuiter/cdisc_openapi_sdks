package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetRefElement._

case class SdtmDatasetRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetRefElement {
  import DateTimeCodecs._

  implicit val SdtmDatasetRefElementCodecJson: CodecJson[SdtmDatasetRefElement] = CodecJson.derive[SdtmDatasetRefElement]
  implicit val SdtmDatasetRefElementDecoder: EntityDecoder[SdtmDatasetRefElement] = jsonOf[SdtmDatasetRefElement]
  implicit val SdtmDatasetRefElementEncoder: EntityEncoder[SdtmDatasetRefElement] = jsonEncoderOf[SdtmDatasetRefElement]
}

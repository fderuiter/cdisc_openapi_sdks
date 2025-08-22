package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetRefElement._

case class SdtmigDatasetRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetRefElement {
  import DateTimeCodecs._

  implicit val SdtmigDatasetRefElementCodecJson: CodecJson[SdtmigDatasetRefElement] = CodecJson.derive[SdtmigDatasetRefElement]
  implicit val SdtmigDatasetRefElementDecoder: EntityDecoder[SdtmigDatasetRefElement] = jsonOf[SdtmigDatasetRefElement]
  implicit val SdtmigDatasetRefElementEncoder: EntityEncoder[SdtmigDatasetRefElement] = jsonEncoderOf[SdtmigDatasetRefElement]
}

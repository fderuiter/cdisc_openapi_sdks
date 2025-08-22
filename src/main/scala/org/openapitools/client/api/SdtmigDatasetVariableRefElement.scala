package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariableRefElement._

case class SdtmigDatasetVariableRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetVariableRefElement {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableRefElementCodecJson: CodecJson[SdtmigDatasetVariableRefElement] = CodecJson.derive[SdtmigDatasetVariableRefElement]
  implicit val SdtmigDatasetVariableRefElementDecoder: EntityDecoder[SdtmigDatasetVariableRefElement] = jsonOf[SdtmigDatasetVariableRefElement]
  implicit val SdtmigDatasetVariableRefElementEncoder: EntityEncoder[SdtmigDatasetVariableRefElement] = jsonEncoderOf[SdtmigDatasetVariableRefElement]
}

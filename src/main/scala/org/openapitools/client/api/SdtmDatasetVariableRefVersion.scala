package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmDatasetVariableRefVersion._

case class SdtmDatasetVariableRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmDatasetVariableRefVersion {
  import DateTimeCodecs._

  implicit val SdtmDatasetVariableRefVersionCodecJson: CodecJson[SdtmDatasetVariableRefVersion] = CodecJson.derive[SdtmDatasetVariableRefVersion]
  implicit val SdtmDatasetVariableRefVersionDecoder: EntityDecoder[SdtmDatasetVariableRefVersion] = jsonOf[SdtmDatasetVariableRefVersion]
  implicit val SdtmDatasetVariableRefVersionEncoder: EntityEncoder[SdtmDatasetVariableRefVersion] = jsonEncoderOf[SdtmDatasetVariableRefVersion]
}

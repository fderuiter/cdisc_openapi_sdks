package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariableRefVersion._

case class SdtmigDatasetVariableRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetVariableRefVersion {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableRefVersionCodecJson: CodecJson[SdtmigDatasetVariableRefVersion] = CodecJson.derive[SdtmigDatasetVariableRefVersion]
  implicit val SdtmigDatasetVariableRefVersionDecoder: EntityDecoder[SdtmigDatasetVariableRefVersion] = jsonOf[SdtmigDatasetVariableRefVersion]
  implicit val SdtmigDatasetVariableRefVersionEncoder: EntityEncoder[SdtmigDatasetVariableRefVersion] = jsonEncoderOf[SdtmigDatasetVariableRefVersion]
}

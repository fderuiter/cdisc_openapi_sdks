package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetVariableRef._

case class SdtmigDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetVariableRef {
  import DateTimeCodecs._

  implicit val SdtmigDatasetVariableRefCodecJson: CodecJson[SdtmigDatasetVariableRef] = CodecJson.derive[SdtmigDatasetVariableRef]
  implicit val SdtmigDatasetVariableRefDecoder: EntityDecoder[SdtmigDatasetVariableRef] = jsonOf[SdtmigDatasetVariableRef]
  implicit val SdtmigDatasetVariableRefEncoder: EntityEncoder[SdtmigDatasetVariableRef] = jsonEncoderOf[SdtmigDatasetVariableRef]
}

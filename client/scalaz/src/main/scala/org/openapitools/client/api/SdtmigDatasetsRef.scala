package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigDatasetsRef._

case class SdtmigDatasetsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigDatasetsRef {
  import DateTimeCodecs._

  implicit val SdtmigDatasetsRefCodecJson: CodecJson[SdtmigDatasetsRef] = CodecJson.derive[SdtmigDatasetsRef]
  implicit val SdtmigDatasetsRefDecoder: EntityDecoder[SdtmigDatasetsRef] = jsonOf[SdtmigDatasetsRef]
  implicit val SdtmigDatasetsRefEncoder: EntityEncoder[SdtmigDatasetsRef] = jsonEncoderOf[SdtmigDatasetsRef]
}

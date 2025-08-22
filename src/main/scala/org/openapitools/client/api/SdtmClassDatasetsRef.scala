package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassDatasetsRef._

case class SdtmClassDatasetsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmClassDatasetsRef {
  import DateTimeCodecs._

  implicit val SdtmClassDatasetsRefCodecJson: CodecJson[SdtmClassDatasetsRef] = CodecJson.derive[SdtmClassDatasetsRef]
  implicit val SdtmClassDatasetsRefDecoder: EntityDecoder[SdtmClassDatasetsRef] = jsonOf[SdtmClassDatasetsRef]
  implicit val SdtmClassDatasetsRefEncoder: EntityEncoder[SdtmClassDatasetsRef] = jsonEncoderOf[SdtmClassDatasetsRef]
}

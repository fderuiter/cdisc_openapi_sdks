package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassDatasetsRef._

case class SdtmigClassDatasetsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SdtmigClassDatasetsRef {
  import DateTimeCodecs._

  implicit val SdtmigClassDatasetsRefCodecJson: CodecJson[SdtmigClassDatasetsRef] = CodecJson.derive[SdtmigClassDatasetsRef]
  implicit val SdtmigClassDatasetsRefDecoder: EntityDecoder[SdtmigClassDatasetsRef] = jsonOf[SdtmigClassDatasetsRef]
  implicit val SdtmigClassDatasetsRefEncoder: EntityEncoder[SdtmigClassDatasetsRef] = jsonEncoderOf[SdtmigClassDatasetsRef]
}

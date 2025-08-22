package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassDatasets._

case class SdtmClassDatasets (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SdtmClassDatasetsLinks])

object SdtmClassDatasets {
  import DateTimeCodecs._

  implicit val SdtmClassDatasetsCodecJson: CodecJson[SdtmClassDatasets] = CodecJson.derive[SdtmClassDatasets]
  implicit val SdtmClassDatasetsDecoder: EntityDecoder[SdtmClassDatasets] = jsonOf[SdtmClassDatasets]
  implicit val SdtmClassDatasetsEncoder: EntityEncoder[SdtmClassDatasets] = jsonEncoderOf[SdtmClassDatasets]
}

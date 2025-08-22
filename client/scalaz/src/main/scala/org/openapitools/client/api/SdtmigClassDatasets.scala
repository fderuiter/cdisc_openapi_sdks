package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassDatasets._

case class SdtmigClassDatasets (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SdtmigClassDatasetsLinks])

object SdtmigClassDatasets {
  import DateTimeCodecs._

  implicit val SdtmigClassDatasetsCodecJson: CodecJson[SdtmigClassDatasets] = CodecJson.derive[SdtmigClassDatasets]
  implicit val SdtmigClassDatasetsDecoder: EntityDecoder[SdtmigClassDatasets] = jsonOf[SdtmigClassDatasets]
  implicit val SdtmigClassDatasetsEncoder: EntityEncoder[SdtmigClassDatasets] = jsonEncoderOf[SdtmigClassDatasets]
}

package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClasses._

case class SdtmClasses (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmClassesLinks])

object SdtmClasses {
  import DateTimeCodecs._

  implicit val SdtmClassesCodecJson: CodecJson[SdtmClasses] = CodecJson.derive[SdtmClasses]
  implicit val SdtmClassesDecoder: EntityDecoder[SdtmClasses] = jsonOf[SdtmClasses]
  implicit val SdtmClassesEncoder: EntityEncoder[SdtmClasses] = jsonEncoderOf[SdtmClasses]
}

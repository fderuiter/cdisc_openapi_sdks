package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClasses._

case class SdtmigClasses (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmigClassesLinks])

object SdtmigClasses {
  import DateTimeCodecs._

  implicit val SdtmigClassesCodecJson: CodecJson[SdtmigClasses] = CodecJson.derive[SdtmigClasses]
  implicit val SdtmigClassesDecoder: EntityDecoder[SdtmigClasses] = jsonOf[SdtmigClasses]
  implicit val SdtmigClassesEncoder: EntityEncoder[SdtmigClasses] = jsonEncoderOf[SdtmigClasses]
}

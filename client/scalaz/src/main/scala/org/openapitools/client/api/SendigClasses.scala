package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigClasses._

case class SendigClasses (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SendigClassesLinks])

object SendigClasses {
  import DateTimeCodecs._

  implicit val SendigClassesCodecJson: CodecJson[SendigClasses] = CodecJson.derive[SendigClasses]
  implicit val SendigClassesDecoder: EntityDecoder[SendigClasses] = jsonOf[SendigClasses]
  implicit val SendigClassesEncoder: EntityEncoder[SendigClasses] = jsonEncoderOf[SendigClasses]
}

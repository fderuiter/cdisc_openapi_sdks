package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigClasses._

case class XmlSdtmigClasses (
  self: Option[SdtmigClasses])

object XmlSdtmigClasses {
  import DateTimeCodecs._

  implicit val XmlSdtmigClassesCodecJson: CodecJson[XmlSdtmigClasses] = CodecJson.derive[XmlSdtmigClasses]
  implicit val XmlSdtmigClassesDecoder: EntityDecoder[XmlSdtmigClasses] = jsonOf[XmlSdtmigClasses]
  implicit val XmlSdtmigClassesEncoder: EntityEncoder[XmlSdtmigClasses] = jsonEncoderOf[XmlSdtmigClasses]
}

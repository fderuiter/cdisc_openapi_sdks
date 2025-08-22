package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmClasses._

case class XmlSdtmClasses (
  self: Option[SdtmClasses])

object XmlSdtmClasses {
  import DateTimeCodecs._

  implicit val XmlSdtmClassesCodecJson: CodecJson[XmlSdtmClasses] = CodecJson.derive[XmlSdtmClasses]
  implicit val XmlSdtmClassesDecoder: EntityDecoder[XmlSdtmClasses] = jsonOf[XmlSdtmClasses]
  implicit val XmlSdtmClassesEncoder: EntityEncoder[XmlSdtmClasses] = jsonEncoderOf[XmlSdtmClasses]
}

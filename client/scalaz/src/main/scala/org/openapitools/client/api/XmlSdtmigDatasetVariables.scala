package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigDatasetVariables._

case class XmlSdtmigDatasetVariables (
  self: Option[SdtmigDatasetVariables])

object XmlSdtmigDatasetVariables {
  import DateTimeCodecs._

  implicit val XmlSdtmigDatasetVariablesCodecJson: CodecJson[XmlSdtmigDatasetVariables] = CodecJson.derive[XmlSdtmigDatasetVariables]
  implicit val XmlSdtmigDatasetVariablesDecoder: EntityDecoder[XmlSdtmigDatasetVariables] = jsonOf[XmlSdtmigDatasetVariables]
  implicit val XmlSdtmigDatasetVariablesEncoder: EntityEncoder[XmlSdtmigDatasetVariables] = jsonEncoderOf[XmlSdtmigDatasetVariables]
}

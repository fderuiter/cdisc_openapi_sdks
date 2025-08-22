package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSendigDatasetVariableRef._

case class RootSendigDatasetVariableRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootSendigDatasetVariableRef {
  import DateTimeCodecs._

  implicit val RootSendigDatasetVariableRefCodecJson: CodecJson[RootSendigDatasetVariableRef] = CodecJson.derive[RootSendigDatasetVariableRef]
  implicit val RootSendigDatasetVariableRefDecoder: EntityDecoder[RootSendigDatasetVariableRef] = jsonOf[RootSendigDatasetVariableRef]
  implicit val RootSendigDatasetVariableRefEncoder: EntityEncoder[RootSendigDatasetVariableRef] = jsonEncoderOf[RootSendigDatasetVariableRef]
}

(ns cdisc-library-api.specs.default-error-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def default-error-response-data
  {
   (ds/opt :statusCode) string?
   (ds/opt :reasonPhrase) string?
   (ds/opt :userMessage) string?
   (ds/opt :adminMessage) string?
   })

(def default-error-response-spec
  (ds/spec
    {:name ::default-error-response
     :spec default-error-response-data}))

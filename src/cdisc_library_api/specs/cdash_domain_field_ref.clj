(ns cdisc-library-api.specs.cdash-domain-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-domain-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-domain-field-ref-spec
  (ds/spec
    {:name ::cdash-domain-field-ref
     :spec cdash-domain-field-ref-data}))

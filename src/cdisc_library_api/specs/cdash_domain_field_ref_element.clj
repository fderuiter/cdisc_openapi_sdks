(ns cdisc-library-api.specs.cdash-domain-field-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-domain-field-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-domain-field-ref-element-spec
  (ds/spec
    {:name ::cdash-domain-field-ref-element
     :spec cdash-domain-field-ref-element-data}))

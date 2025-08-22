(ns cdisc-library-api.specs.cdash-class-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-class-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-class-field-ref-spec
  (ds/spec
    {:name ::cdash-class-field-ref
     :spec cdash-class-field-ref-data}))

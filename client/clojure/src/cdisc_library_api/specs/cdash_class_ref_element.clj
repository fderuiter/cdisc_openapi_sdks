(ns cdisc-library-api.specs.cdash-class-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-class-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-class-ref-element-spec
  (ds/spec
    {:name ::cdash-class-ref-element
     :spec cdash-class-ref-element-data}))

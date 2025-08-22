(ns cdisc-library-api.specs.cdash-class-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-class-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-class-ref-spec
  (ds/spec
    {:name ::cdash-class-ref
     :spec cdash-class-ref-data}))

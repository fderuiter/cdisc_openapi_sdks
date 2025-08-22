(ns cdisc-library-api.specs.cdash-class-domains-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-class-domains-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-class-domains-ref-spec
  (ds/spec
    {:name ::cdash-class-domains-ref
     :spec cdash-class-domains-ref-data}))

(ns cdisc-library-api.specs.cdash-domain-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-domain-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-domain-ref-spec
  (ds/spec
    {:name ::cdash-domain-ref
     :spec cdash-domain-ref-data}))

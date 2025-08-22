(ns cdisc-library-api.specs.cdash-domain-fields-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-domain-fields-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-domain-fields-ref-spec
  (ds/spec
    {:name ::cdash-domain-fields-ref
     :spec cdash-domain-fields-ref-data}))

(ns cdisc-library-api.specs.cdash-domain-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-fields-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-fields-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :_links) cdash-domain-fields-links-spec
   })

(def cdash-domain-fields-spec
  (ds/spec
    {:name ::cdash-domain-fields
     :spec cdash-domain-fields-data}))

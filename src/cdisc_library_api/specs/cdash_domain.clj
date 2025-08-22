(ns cdisc-library-api.specs.cdash-domain
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-links :refer :all]
            [cdisc-library-api.specs.cdash-domain-field :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :_links) cdash-domain-links-spec
   (ds/opt :fields) (s/coll-of cdash-domain-field-spec)
   })

(def cdash-domain-spec
  (ds/spec
    {:name ::cdash-domain
     :spec cdash-domain-data}))

(ns cdisc-library-api.specs.cdash-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-links :refer :all]
            [cdisc-library-api.specs.cdash-class-field :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) cdash-class-links-spec
   (ds/opt :cdashModelFields) (s/coll-of cdash-class-field-spec)
   })

(def cdash-class-spec
  (ds/spec
    {:name ::cdash-class
     :spec cdash-class-data}))

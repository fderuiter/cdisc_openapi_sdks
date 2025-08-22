(ns cdisc-library-api.specs.cdash-class-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-domains-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-domains-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) cdash-class-domains-links-spec
   })

(def cdash-class-domains-spec
  (ds/spec
    {:name ::cdash-class-domains
     :spec cdash-class-domains-data}))

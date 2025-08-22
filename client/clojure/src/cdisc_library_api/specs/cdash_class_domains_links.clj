(ns cdisc-library-api.specs.cdash-class-domains-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-domains-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-domains-links-data
  {
   (ds/opt :self) cdash-class-domains-ref-spec
   (ds/opt :domains) (s/coll-of cdash-domain-ref-element-spec)
   })

(def cdash-class-domains-links-spec
  (ds/spec
    {:name ::cdash-class-domains-links
     :spec cdash-class-domains-links-data}))

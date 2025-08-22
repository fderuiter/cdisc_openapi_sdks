(ns cdisc-library-api.specs.cdashig-class-domains-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-domains-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-domains-links-data
  {
   (ds/opt :self) cdashig-class-domains-ref-spec
   (ds/opt :domains) (s/coll-of cdashig-domain-ref-element-spec)
   })

(def cdashig-class-domains-links-spec
  (ds/spec
    {:name ::cdashig-class-domains-links
     :spec cdashig-class-domains-links-data}))

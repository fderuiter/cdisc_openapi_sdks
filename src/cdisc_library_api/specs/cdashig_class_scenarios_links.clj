(ns cdisc-library-api.specs.cdashig-class-scenarios-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-scenarios-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref-element :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-scenarios-links-data
  {
   (ds/opt :self) cdashig-class-scenarios-ref-spec
   (ds/opt :scenarios) (s/coll-of cdashig-scenario-ref-element-spec)
   })

(def cdashig-class-scenarios-links-spec
  (ds/spec
    {:name ::cdashig-class-scenarios-links
     :spec cdashig-class-scenarios-links-data}))

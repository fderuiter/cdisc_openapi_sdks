(ns cdisc-library-api.specs.sdtm-classes-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtm-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtm-classes-links-data
  {
   (ds/opt :self) sdtm-classes-ref-spec
   (ds/opt :priorVersion) sdtm-classes-ref-spec
   (ds/opt :classes) (s/coll-of sdtm-class-ref-element-spec)
   })

(def sdtm-classes-links-spec
  (ds/spec
    {:name ::sdtm-classes-links
     :spec sdtm-classes-links-data}))

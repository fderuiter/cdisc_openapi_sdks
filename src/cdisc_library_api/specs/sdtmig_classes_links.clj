(ns cdisc-library-api.specs.sdtmig-classes-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-classes-links-data
  {
   (ds/opt :self) sdtmig-classes-ref-spec
   (ds/opt :priorVersion) sdtmig-classes-ref-spec
   (ds/opt :classes) (s/coll-of sdtmig-class-ref-element-spec)
   })

(def sdtmig-classes-links-spec
  (ds/spec
    {:name ::sdtmig-classes-links
     :spec sdtmig-classes-links-data}))

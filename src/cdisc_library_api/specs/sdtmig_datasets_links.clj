(ns cdisc-library-api.specs.sdtmig-datasets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-datasets-links-data
  {
   (ds/opt :self) sdtmig-datasets-ref-spec
   (ds/opt :parentProduct) sdtmig-product-ref-spec
   (ds/opt :priorVersion) sdtmig-datasets-ref-spec
   (ds/opt :datasets) (s/coll-of sdtmig-dataset-ref-element-spec)
   })

(def sdtmig-datasets-links-spec
  (ds/spec
    {:name ::sdtmig-datasets-links
     :spec sdtmig-datasets-links-data}))

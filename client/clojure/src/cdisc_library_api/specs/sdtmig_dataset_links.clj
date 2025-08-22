(ns cdisc-library-api.specs.sdtmig-dataset-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-links-data
  {
   (ds/opt :self) sdtmig-dataset-ref-spec
   (ds/opt :modelDataset) sdtm-dataset-ref-spec
   (ds/opt :parentProduct) sdtmig-product-ref-spec
   (ds/opt :parentClass) sdtmig-class-ref-spec
   (ds/opt :priorVersion) sdtmig-dataset-ref-spec
   })

(def sdtmig-dataset-links-spec
  (ds/spec
    {:name ::sdtmig-dataset-links
     :spec sdtmig-dataset-links-data}))

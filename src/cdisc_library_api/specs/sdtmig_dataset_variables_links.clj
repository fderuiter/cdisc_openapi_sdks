(ns cdisc-library-api.specs.sdtmig-dataset-variables-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variables-links-data
  {
   (ds/opt :self) sdtmig-dataset-variables-ref-spec
   (ds/opt :modelDataset) sdtm-dataset-ref-spec
   (ds/opt :parentProduct) sdtmig-product-ref-spec
   (ds/opt :parentClass) sdtmig-class-ref-spec
   (ds/opt :priorVersion) sdtmig-dataset-variables-ref-spec
   (ds/opt :datasetVariables) (s/coll-of sdtmig-dataset-variable-ref-element-spec)
   })

(def sdtmig-dataset-variables-links-spec
  (ds/spec
    {:name ::sdtmig-dataset-variables-links
     :spec sdtmig-dataset-variables-links-data}))

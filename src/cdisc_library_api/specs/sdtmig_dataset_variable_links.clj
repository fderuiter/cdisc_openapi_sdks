(ns cdisc-library-api.specs.sdtmig-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-ref :refer :all]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variable-links-data
  {
   (ds/opt :self) sdtmig-dataset-variable-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :modelClassVariable) sdtm-class-variable-ref-spec
   (ds/opt :modelDatasetVariable) sdtm-dataset-variable-ref-spec
   (ds/opt :parentProduct) sdtmig-product-ref-spec
   (ds/opt :parentDataset) sdtmig-dataset-ref-spec
   (ds/opt :rootItem) root-sdtmig-dataset-variable-ref-spec
   (ds/opt :priorVersion) sdtmig-dataset-variable-ref-spec
   })

(def sdtmig-dataset-variable-links-spec
  (ds/spec
    {:name ::sdtmig-dataset-variable-links
     :spec sdtmig-dataset-variable-links-data}))

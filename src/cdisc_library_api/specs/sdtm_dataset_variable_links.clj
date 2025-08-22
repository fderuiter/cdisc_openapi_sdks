(ns cdisc-library-api.specs.sdtm-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.root-sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtm-dataset-variable-links-data
  {
   (ds/opt :self) sdtm-dataset-variable-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :parentDataset) sdtm-dataset-ref-spec
   (ds/opt :rootItem) root-sdtm-dataset-variable-ref-spec
   (ds/opt :priorVersion) sdtm-dataset-variable-ref-spec
   })

(def sdtm-dataset-variable-links-spec
  (ds/spec
    {:name ::sdtm-dataset-variable-links
     :spec sdtm-dataset-variable-links-data}))

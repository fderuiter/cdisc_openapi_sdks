(ns cdisc-library-api.specs.sendig-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref :refer :all]
            [cdisc-library-api.specs.root-sendig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref :refer :all]
            )
  (:import (java.io File)))


(def sendig-dataset-variable-links-data
  {
   (ds/opt :self) sendig-dataset-variable-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :modelClassVariable) sdtm-class-variable-ref-spec
   (ds/opt :modelDatasetVariable) sdtm-dataset-variable-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :parentDataset) sendig-dataset-ref-spec
   (ds/opt :rootItem) root-sendig-dataset-variable-ref-spec
   (ds/opt :priorVersion) sendig-dataset-variable-ref-spec
   })

(def sendig-dataset-variable-links-spec
  (ds/spec
    {:name ::sendig-dataset-variable-links
     :spec sendig-dataset-variable-links-data}))

(ns cdisc-library-api.specs.root-sdtm-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-sdtm-dataset-variable-links-data
  {
   (ds/opt :self) root-sdtm-dataset-variable-ref-spec
   (ds/opt :versions) (s/coll-of sdtm-dataset-variable-ref-version-spec)
   })

(def root-sdtm-dataset-variable-links-spec
  (ds/spec
    {:name ::root-sdtm-dataset-variable-links
     :spec root-sdtm-dataset-variable-links-data}))

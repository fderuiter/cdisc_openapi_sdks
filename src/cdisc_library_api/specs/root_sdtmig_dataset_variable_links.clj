(ns cdisc-library-api.specs.root-sdtmig-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-sdtmig-dataset-variable-links-data
  {
   (ds/opt :self) root-sdtmig-dataset-variable-ref-spec
   (ds/opt :versions) (s/coll-of sdtmig-dataset-variable-ref-version-spec)
   })

(def root-sdtmig-dataset-variable-links-spec
  (ds/spec
    {:name ::root-sdtmig-dataset-variable-links
     :spec root-sdtmig-dataset-variable-links-data}))

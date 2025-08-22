(ns cdisc-library-api.specs.root-sdtm-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def root-sdtm-dataset-variable-data
  {
   (ds/opt :_links) root-sdtm-dataset-variable-links-spec
   })

(def root-sdtm-dataset-variable-spec
  (ds/spec
    {:name ::root-sdtm-dataset-variable
     :spec root-sdtm-dataset-variable-data}))

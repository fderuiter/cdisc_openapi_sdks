(ns cdisc-library-api.specs.root-sdtmig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def root-sdtmig-dataset-variable-data
  {
   (ds/opt :_links) root-sdtmig-dataset-variable-links-spec
   })

(def root-sdtmig-dataset-variable-spec
  (ds/spec
    {:name ::root-sdtmig-dataset-variable
     :spec root-sdtmig-dataset-variable-data}))

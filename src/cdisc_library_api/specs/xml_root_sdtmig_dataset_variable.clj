(ns cdisc-library-api.specs.xml-root-sdtmig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-root-sdtmig-dataset-variable-data
  {
   (ds/opt :self) root-sdtmig-dataset-variable-spec
   })

(def xml-root-sdtmig-dataset-variable-spec
  (ds/spec
    {:name ::xml-root-sdtmig-dataset-variable
     :spec xml-root-sdtmig-dataset-variable-data}))

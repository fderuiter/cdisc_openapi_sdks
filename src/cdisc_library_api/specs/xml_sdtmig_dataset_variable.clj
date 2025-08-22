(ns cdisc-library-api.specs.xml-sdtmig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtmig-dataset-variable-data
  {
   (ds/opt :self) sdtmig-dataset-variable-spec
   })

(def xml-sdtmig-dataset-variable-spec
  (ds/spec
    {:name ::xml-sdtmig-dataset-variable
     :spec xml-sdtmig-dataset-variable-data}))

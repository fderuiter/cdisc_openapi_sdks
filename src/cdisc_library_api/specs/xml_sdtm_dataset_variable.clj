(ns cdisc-library-api.specs.xml-sdtm-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-dataset-variable-data
  {
   (ds/opt :self) sdtm-dataset-variable-spec
   })

(def xml-sdtm-dataset-variable-spec
  (ds/spec
    {:name ::xml-sdtm-dataset-variable
     :spec xml-sdtm-dataset-variable-data}))

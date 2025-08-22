(ns cdisc-library-api.specs.xml-sdtm-dataset-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset-variables :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-dataset-variables-data
  {
   (ds/opt :self) sdtm-dataset-variables-spec
   })

(def xml-sdtm-dataset-variables-spec
  (ds/spec
    {:name ::xml-sdtm-dataset-variables
     :spec xml-sdtm-dataset-variables-data}))

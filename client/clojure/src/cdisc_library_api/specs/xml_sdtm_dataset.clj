(ns cdisc-library-api.specs.xml-sdtm-dataset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-dataset :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-dataset-data
  {
   (ds/opt :self) sdtm-dataset-spec
   })

(def xml-sdtm-dataset-spec
  (ds/spec
    {:name ::xml-sdtm-dataset
     :spec xml-sdtm-dataset-data}))

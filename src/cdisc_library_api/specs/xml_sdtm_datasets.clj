(ns cdisc-library-api.specs.xml-sdtm-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-datasets-data
  {
   (ds/opt :self) sdtm-datasets-spec
   })

(def xml-sdtm-datasets-spec
  (ds/spec
    {:name ::xml-sdtm-datasets
     :spec xml-sdtm-datasets-data}))

(ns cdisc-library-api.specs.xml-sdtm-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-datasets :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-class-datasets-data
  {
   (ds/opt :self) sdtm-class-datasets-spec
   })

(def xml-sdtm-class-datasets-spec
  (ds/spec
    {:name ::xml-sdtm-class-datasets
     :spec xml-sdtm-class-datasets-data}))

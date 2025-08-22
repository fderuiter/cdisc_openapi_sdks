(ns cdisc-library-api.specs.xml-sdtm-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-class-data
  {
   (ds/opt :self) sdtm-class-spec
   })

(def xml-sdtm-class-spec
  (ds/spec
    {:name ::xml-sdtm-class
     :spec xml-sdtm-class-data}))

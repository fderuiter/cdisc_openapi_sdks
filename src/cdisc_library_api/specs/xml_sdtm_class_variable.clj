(ns cdisc-library-api.specs.xml-sdtm-class-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-class-variable-data
  {
   (ds/opt :self) sdtm-class-variable-spec
   })

(def xml-sdtm-class-variable-spec
  (ds/spec
    {:name ::xml-sdtm-class-variable
     :spec xml-sdtm-class-variable-data}))

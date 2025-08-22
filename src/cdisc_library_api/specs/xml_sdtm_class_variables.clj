(ns cdisc-library-api.specs.xml-sdtm-class-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variables :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-class-variables-data
  {
   (ds/opt :self) sdtm-class-variables-spec
   })

(def xml-sdtm-class-variables-spec
  (ds/spec
    {:name ::xml-sdtm-class-variables
     :spec xml-sdtm-class-variables-data}))

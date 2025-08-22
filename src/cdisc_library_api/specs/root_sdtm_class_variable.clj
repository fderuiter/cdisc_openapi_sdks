(ns cdisc-library-api.specs.root-sdtm-class-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-class-variable-links :refer :all]
            )
  (:import (java.io File)))


(def root-sdtm-class-variable-data
  {
   (ds/opt :_links) root-sdtm-class-variable-links-spec
   })

(def root-sdtm-class-variable-spec
  (ds/spec
    {:name ::root-sdtm-class-variable
     :spec root-sdtm-class-variable-data}))

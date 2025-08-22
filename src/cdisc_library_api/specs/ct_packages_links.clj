(ns cdisc-library-api.specs.ct-packages-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-packages-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref-element :refer :all]
            )
  (:import (java.io File)))


(def ct-packages-links-data
  {
   (ds/opt :self) ct-packages-ref-spec
   (ds/opt :packages) (s/coll-of ct-package-ref-element-spec)
   })

(def ct-packages-links-spec
  (ds/spec
    {:name ::ct-packages-links
     :spec ct-packages-links-data}))

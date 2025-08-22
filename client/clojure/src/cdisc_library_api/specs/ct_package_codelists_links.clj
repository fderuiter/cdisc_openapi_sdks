(ns cdisc-library-api.specs.ct-package-codelists-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package-codelists-ref :refer :all]
            [cdisc-library-api.specs.ct-package-codelists-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref-element :refer :all]
            )
  (:import (java.io File)))


(def ct-package-codelists-links-data
  {
   (ds/opt :self) ct-package-codelists-ref-spec
   (ds/opt :priorVersion) ct-package-codelists-ref-spec
   (ds/opt :codelists) (s/coll-of ct-codelist-ref-element-spec)
   })

(def ct-package-codelists-links-spec
  (ds/spec
    {:name ::ct-package-codelists-links
     :spec ct-package-codelists-links-data}))

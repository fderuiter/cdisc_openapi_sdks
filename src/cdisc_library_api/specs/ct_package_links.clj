(ns cdisc-library-api.specs.ct-package-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            )
  (:import (java.io File)))


(def ct-package-links-data
  {
   (ds/opt :self) ct-package-ref-spec
   (ds/opt :priorVersion) ct-package-ref-spec
   })

(def ct-package-links-spec
  (ds/spec
    {:name ::ct-package-links
     :spec ct-package-links-data}))

(ns cdisc-library-api.specs.qrs-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-product-ref :refer :all]
            [cdisc-library-api.specs.qrs-product-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.qrs-items-ref :refer :all]
            )
  (:import (java.io File)))


(def qrs-product-links-data
  {
   (ds/opt :self) qrs-product-ref-spec
   (ds/opt :priorVersion) qrs-product-ref-spec
   (ds/opt :qrsTermCAT) root-ct-term-ref-spec
   (ds/opt :qrsItems) qrs-items-ref-spec
   })

(def qrs-product-links-spec
  (ds/spec
    {:name ::qrs-product-links
     :spec qrs-product-links-data}))

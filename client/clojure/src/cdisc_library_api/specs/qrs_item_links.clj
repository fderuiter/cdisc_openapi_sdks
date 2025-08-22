(ns cdisc-library-api.specs.qrs-item-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup :refer :all]
            )
  (:import (java.io File)))


(def qrs-item-links-data
  {
   (ds/opt :qrsItemTEST) root-ct-term-ref-spec
   (ds/opt :qrsItemTESTCD) root-ct-term-ref-spec
   (ds/opt :qrsItemEVAL) root-ct-term-ref-spec
   (ds/opt :qrsItemSCAT) root-ct-term-ref-spec
   (ds/opt :responsegroup) qrs-responsegroup-spec
   })

(def qrs-item-links-spec
  (ds/spec
    {:name ::qrs-item-links
     :spec qrs-item-links-data}))

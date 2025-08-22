(ns cdisc-library-api.specs.qrs-response-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            )
  (:import (java.io File)))


(def qrs-response-links-data
  {
   (ds/opt :qrsResponseORRES) root-ct-term-ref-spec
   (ds/opt :qrsResponseORRESU) root-ct-term-ref-spec
   (ds/opt :qrsResponseSTRESC) root-ct-term-ref-spec
   (ds/opt :qrsResponseSTRESCU) root-ct-term-ref-spec
   })

(def qrs-response-links-spec
  (ds/spec
    {:name ::qrs-response-links
     :spec qrs-response-links-data}))

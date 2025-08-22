(ns cdisc-library-api.specs.root-sendig-dataset-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sendig-dataset-variable-links :refer :all]
            )
  (:import (java.io File)))


(def root-sendig-dataset-variable-data
  {
   (ds/opt :_links) root-sendig-dataset-variable-links-spec
   })

(def root-sendig-dataset-variable-spec
  (ds/spec
    {:name ::root-sendig-dataset-variable
     :spec root-sendig-dataset-variable-data}))

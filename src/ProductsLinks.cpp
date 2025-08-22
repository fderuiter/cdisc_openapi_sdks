#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductsLinks::ProductsLinks()
{
	//__init();
}

ProductsLinks::~ProductsLinks()
{
	//__cleanup();
}

void
ProductsLinks::__init()
{
	//self = new ProductsRef();
	//datacollection = new ProductgroupDataCollection();
	//datatabulation = new ProductgroupDataTabulation();
	//dataanalysis = new ProductgroupDataAnalysis();
	//terminology = new ProductgroupTerminology();
	//measure = new ProductgroupQrs();
}

void
ProductsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(datacollection != NULL) {
	//
	//delete datacollection;
	//datacollection = NULL;
	//}
	//if(datatabulation != NULL) {
	//
	//delete datatabulation;
	//datatabulation = NULL;
	//}
	//if(dataanalysis != NULL) {
	//
	//delete dataanalysis;
	//dataanalysis = NULL;
	//}
	//if(terminology != NULL) {
	//
	//delete terminology;
	//terminology = NULL;
	//}
	//if(measure != NULL) {
	//
	//delete measure;
	//measure = NULL;
	//}
	//
}

void
ProductsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductsRef")) {
			jsonToValue(&self, node, "ProductsRef", "ProductsRef");
		} else {
			
			ProductsRef* obj = static_cast<ProductsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datacollectionKey = "data-collection";
	node = json_object_get_member(pJsonObject, datacollectionKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataCollection")) {
			jsonToValue(&datacollection, node, "ProductgroupDataCollection", "ProductgroupDataCollection");
		} else {
			
			ProductgroupDataCollection* obj = static_cast<ProductgroupDataCollection*> (&datacollection);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datatabulationKey = "data-tabulation";
	node = json_object_get_member(pJsonObject, datatabulationKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataTabulation")) {
			jsonToValue(&datatabulation, node, "ProductgroupDataTabulation", "ProductgroupDataTabulation");
		} else {
			
			ProductgroupDataTabulation* obj = static_cast<ProductgroupDataTabulation*> (&datatabulation);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *dataanalysisKey = "data-analysis";
	node = json_object_get_member(pJsonObject, dataanalysisKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataAnalysis")) {
			jsonToValue(&dataanalysis, node, "ProductgroupDataAnalysis", "ProductgroupDataAnalysis");
		} else {
			
			ProductgroupDataAnalysis* obj = static_cast<ProductgroupDataAnalysis*> (&dataanalysis);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *terminologyKey = "terminology";
	node = json_object_get_member(pJsonObject, terminologyKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupTerminology")) {
			jsonToValue(&terminology, node, "ProductgroupTerminology", "ProductgroupTerminology");
		} else {
			
			ProductgroupTerminology* obj = static_cast<ProductgroupTerminology*> (&terminology);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *measureKey = "measure";
	node = json_object_get_member(pJsonObject, measureKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupQrs")) {
			jsonToValue(&measure, node, "ProductgroupQrs", "ProductgroupQrs");
		} else {
			
			ProductgroupQrs* obj = static_cast<ProductgroupQrs*> (&measure);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductsLinks::ProductsLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductsRef")) {
		ProductsRef obj = getSelf();
		node = converttoJson(&obj, "ProductsRef", "");
	}
	else {
		
		ProductsRef obj = static_cast<ProductsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("ProductgroupDataCollection")) {
		ProductgroupDataCollection obj = getDatacollection();
		node = converttoJson(&obj, "ProductgroupDataCollection", "");
	}
	else {
		
		ProductgroupDataCollection obj = static_cast<ProductgroupDataCollection> (getDatacollection());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *datacollectionKey = "data-collection";
	json_object_set_member(pJsonObject, datacollectionKey, node);
	if (isprimitive("ProductgroupDataTabulation")) {
		ProductgroupDataTabulation obj = getDatatabulation();
		node = converttoJson(&obj, "ProductgroupDataTabulation", "");
	}
	else {
		
		ProductgroupDataTabulation obj = static_cast<ProductgroupDataTabulation> (getDatatabulation());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *datatabulationKey = "data-tabulation";
	json_object_set_member(pJsonObject, datatabulationKey, node);
	if (isprimitive("ProductgroupDataAnalysis")) {
		ProductgroupDataAnalysis obj = getDataanalysis();
		node = converttoJson(&obj, "ProductgroupDataAnalysis", "");
	}
	else {
		
		ProductgroupDataAnalysis obj = static_cast<ProductgroupDataAnalysis> (getDataanalysis());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *dataanalysisKey = "data-analysis";
	json_object_set_member(pJsonObject, dataanalysisKey, node);
	if (isprimitive("ProductgroupTerminology")) {
		ProductgroupTerminology obj = getTerminology();
		node = converttoJson(&obj, "ProductgroupTerminology", "");
	}
	else {
		
		ProductgroupTerminology obj = static_cast<ProductgroupTerminology> (getTerminology());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *terminologyKey = "terminology";
	json_object_set_member(pJsonObject, terminologyKey, node);
	if (isprimitive("ProductgroupQrs")) {
		ProductgroupQrs obj = getMeasure();
		node = converttoJson(&obj, "ProductgroupQrs", "");
	}
	else {
		
		ProductgroupQrs obj = static_cast<ProductgroupQrs> (getMeasure());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *measureKey = "measure";
	json_object_set_member(pJsonObject, measureKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductsRef
ProductsLinks::getSelf()
{
	return self;
}

void
ProductsLinks::setSelf(ProductsRef  self)
{
	this->self = self;
}

ProductgroupDataCollection
ProductsLinks::getDatacollection()
{
	return datacollection;
}

void
ProductsLinks::setDatacollection(ProductgroupDataCollection  datacollection)
{
	this->datacollection = datacollection;
}

ProductgroupDataTabulation
ProductsLinks::getDatatabulation()
{
	return datatabulation;
}

void
ProductsLinks::setDatatabulation(ProductgroupDataTabulation  datatabulation)
{
	this->datatabulation = datatabulation;
}

ProductgroupDataAnalysis
ProductsLinks::getDataanalysis()
{
	return dataanalysis;
}

void
ProductsLinks::setDataanalysis(ProductgroupDataAnalysis  dataanalysis)
{
	this->dataanalysis = dataanalysis;
}

ProductgroupTerminology
ProductsLinks::getTerminology()
{
	return terminology;
}

void
ProductsLinks::setTerminology(ProductgroupTerminology  terminology)
{
	this->terminology = terminology;
}

ProductgroupQrs
ProductsLinks::getMeasure()
{
	return measure;
}

void
ProductsLinks::setMeasure(ProductgroupQrs  measure)
{
	this->measure = measure;
}



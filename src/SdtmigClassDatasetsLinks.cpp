#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigClassDatasetsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigClassDatasetsLinks::SdtmigClassDatasetsLinks()
{
	//__init();
}

SdtmigClassDatasetsLinks::~SdtmigClassDatasetsLinks()
{
	//__cleanup();
}

void
SdtmigClassDatasetsLinks::__init()
{
	//self = new SdtmigClassDatasetsRef();
	//parentProduct = new SdtmigProductRef();
	//priorVersion = new SdtmigClassDatasetsRef();
	//new std::list()std::list> datasets;
}

void
SdtmigClassDatasetsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SdtmigClassDatasetsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassDatasetsRef")) {
			jsonToValue(&self, node, "SdtmigClassDatasetsRef", "SdtmigClassDatasetsRef");
		} else {
			
			SdtmigClassDatasetsRef* obj = static_cast<SdtmigClassDatasetsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmigProductRef", "SdtmigProductRef");
		} else {
			
			SdtmigProductRef* obj = static_cast<SdtmigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassDatasetsRef")) {
			jsonToValue(&priorVersion, node, "SdtmigClassDatasetsRef", "SdtmigClassDatasetsRef");
		} else {
			
			SdtmigClassDatasetsRef* obj = static_cast<SdtmigClassDatasetsRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigDatasetRefElement> new_list;
			SdtmigDatasetRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigDatasetRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmigDatasetRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SdtmigClassDatasetsLinks::SdtmigClassDatasetsLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigClassDatasetsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClassDatasetsRef")) {
		SdtmigClassDatasetsRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigClassDatasetsRef", "");
	}
	else {
		
		SdtmigClassDatasetsRef obj = static_cast<SdtmigClassDatasetsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmigProductRef")) {
		SdtmigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmigProductRef", "");
	}
	else {
		
		SdtmigProductRef obj = static_cast<SdtmigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmigClassDatasetsRef")) {
		SdtmigClassDatasetsRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigClassDatasetsRef", "");
	}
	else {
		
		SdtmigClassDatasetsRef obj = static_cast<SdtmigClassDatasetsRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmigDatasetRefElement")) {
		list<SdtmigDatasetRefElement> new_list = static_cast<list <SdtmigDatasetRefElement> > (getDatasets());
		node = converttoJson(&new_list, "SdtmigDatasetRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigDatasetRefElement> new_list = static_cast<list <SdtmigDatasetRefElement> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigDatasetRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigDatasetRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmigClassDatasetsRef
SdtmigClassDatasetsLinks::getSelf()
{
	return self;
}

void
SdtmigClassDatasetsLinks::setSelf(SdtmigClassDatasetsRef  self)
{
	this->self = self;
}

SdtmigProductRef
SdtmigClassDatasetsLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmigClassDatasetsLinks::setParentProduct(SdtmigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmigClassDatasetsRef
SdtmigClassDatasetsLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigClassDatasetsLinks::setPriorVersion(SdtmigClassDatasetsRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmigDatasetRefElement>
SdtmigClassDatasetsLinks::getDatasets()
{
	return datasets;
}

void
SdtmigClassDatasetsLinks::setDatasets(std::list <SdtmigDatasetRefElement> datasets)
{
	this->datasets = datasets;
}



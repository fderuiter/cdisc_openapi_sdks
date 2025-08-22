#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigDatasetVariablesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigDatasetVariablesLinks::SdtmigDatasetVariablesLinks()
{
	//__init();
}

SdtmigDatasetVariablesLinks::~SdtmigDatasetVariablesLinks()
{
	//__cleanup();
}

void
SdtmigDatasetVariablesLinks::__init()
{
	//self = new SdtmigDatasetVariablesRef();
	//modelDataset = new SdtmDatasetRef();
	//parentProduct = new SdtmigProductRef();
	//parentClass = new SdtmigClassRef();
	//priorVersion = new SdtmigDatasetVariablesRef();
	//new std::list()std::list> datasetVariables;
}

void
SdtmigDatasetVariablesLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(modelDataset != NULL) {
	//
	//delete modelDataset;
	//modelDataset = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(parentClass != NULL) {
	//
	//delete parentClass;
	//parentClass = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(datasetVariables != NULL) {
	//datasetVariables.RemoveAll(true);
	//delete datasetVariables;
	//datasetVariables = NULL;
	//}
	//
}

void
SdtmigDatasetVariablesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariablesRef")) {
			jsonToValue(&self, node, "SdtmigDatasetVariablesRef", "SdtmigDatasetVariablesRef");
		} else {
			
			SdtmigDatasetVariablesRef* obj = static_cast<SdtmigDatasetVariablesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelDatasetKey = "modelDataset";
	node = json_object_get_member(pJsonObject, modelDatasetKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetRef")) {
			jsonToValue(&modelDataset, node, "SdtmDatasetRef", "SdtmDatasetRef");
		} else {
			
			SdtmDatasetRef* obj = static_cast<SdtmDatasetRef*> (&modelDataset);
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
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassRef")) {
			jsonToValue(&parentClass, node, "SdtmigClassRef", "SdtmigClassRef");
		} else {
			
			SdtmigClassRef* obj = static_cast<SdtmigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariablesRef")) {
			jsonToValue(&priorVersion, node, "SdtmigDatasetVariablesRef", "SdtmigDatasetVariablesRef");
		} else {
			
			SdtmigDatasetVariablesRef* obj = static_cast<SdtmigDatasetVariablesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigDatasetVariableRefElement> new_list;
			SdtmigDatasetVariableRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigDatasetVariableRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmigDatasetVariableRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SdtmigDatasetVariablesLinks::SdtmigDatasetVariablesLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigDatasetVariablesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasetVariablesRef")) {
		SdtmigDatasetVariablesRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasetVariablesRef", "");
	}
	else {
		
		SdtmigDatasetVariablesRef obj = static_cast<SdtmigDatasetVariablesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmDatasetRef")) {
		SdtmDatasetRef obj = getModelDataset();
		node = converttoJson(&obj, "SdtmDatasetRef", "");
	}
	else {
		
		SdtmDatasetRef obj = static_cast<SdtmDatasetRef> (getModelDataset());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelDatasetKey = "modelDataset";
	json_object_set_member(pJsonObject, modelDatasetKey, node);
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
	if (isprimitive("SdtmigClassRef")) {
		SdtmigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmigClassRef", "");
	}
	else {
		
		SdtmigClassRef obj = static_cast<SdtmigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmigDatasetVariablesRef")) {
		SdtmigDatasetVariablesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigDatasetVariablesRef", "");
	}
	else {
		
		SdtmigDatasetVariablesRef obj = static_cast<SdtmigDatasetVariablesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmigDatasetVariableRefElement")) {
		list<SdtmigDatasetVariableRefElement> new_list = static_cast<list <SdtmigDatasetVariableRefElement> > (getDatasetVariables());
		node = converttoJson(&new_list, "SdtmigDatasetVariableRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigDatasetVariableRefElement> new_list = static_cast<list <SdtmigDatasetVariableRefElement> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigDatasetVariableRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigDatasetVariableRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetVariablesKey = "datasetVariables";
	json_object_set_member(pJsonObject, datasetVariablesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmigDatasetVariablesRef
SdtmigDatasetVariablesLinks::getSelf()
{
	return self;
}

void
SdtmigDatasetVariablesLinks::setSelf(SdtmigDatasetVariablesRef  self)
{
	this->self = self;
}

SdtmDatasetRef
SdtmigDatasetVariablesLinks::getModelDataset()
{
	return modelDataset;
}

void
SdtmigDatasetVariablesLinks::setModelDataset(SdtmDatasetRef  modelDataset)
{
	this->modelDataset = modelDataset;
}

SdtmigProductRef
SdtmigDatasetVariablesLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmigDatasetVariablesLinks::setParentProduct(SdtmigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmigClassRef
SdtmigDatasetVariablesLinks::getParentClass()
{
	return parentClass;
}

void
SdtmigDatasetVariablesLinks::setParentClass(SdtmigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SdtmigDatasetVariablesRef
SdtmigDatasetVariablesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigDatasetVariablesLinks::setPriorVersion(SdtmigDatasetVariablesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmigDatasetVariableRefElement>
SdtmigDatasetVariablesLinks::getDatasetVariables()
{
	return datasetVariables;
}

void
SdtmigDatasetVariablesLinks::setDatasetVariables(std::list <SdtmigDatasetVariableRefElement> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}



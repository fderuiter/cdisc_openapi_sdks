#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigDatasetVariablesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigDatasetVariablesLinks::SendigDatasetVariablesLinks()
{
	//__init();
}

SendigDatasetVariablesLinks::~SendigDatasetVariablesLinks()
{
	//__cleanup();
}

void
SendigDatasetVariablesLinks::__init()
{
	//self = new SendigDatasetVariablesRef();
	//modelDataset = new SdtmDatasetRef();
	//parentProduct = new SendigProductRef();
	//parentClass = new SendigClassRef();
	//priorVersion = new SendigDatasetVariablesRef();
	//new std::list()std::list> datasetVariables;
}

void
SendigDatasetVariablesLinks::__cleanup()
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
SendigDatasetVariablesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetVariablesRef")) {
			jsonToValue(&self, node, "SendigDatasetVariablesRef", "SendigDatasetVariablesRef");
		} else {
			
			SendigDatasetVariablesRef* obj = static_cast<SendigDatasetVariablesRef*> (&self);
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
	

		if (isprimitive("SendigProductRef")) {
			jsonToValue(&parentProduct, node, "SendigProductRef", "SendigProductRef");
		} else {
			
			SendigProductRef* obj = static_cast<SendigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassRef")) {
			jsonToValue(&parentClass, node, "SendigClassRef", "SendigClassRef");
		} else {
			
			SendigClassRef* obj = static_cast<SendigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetVariablesRef")) {
			jsonToValue(&priorVersion, node, "SendigDatasetVariablesRef", "SendigDatasetVariablesRef");
		} else {
			
			SendigDatasetVariablesRef* obj = static_cast<SendigDatasetVariablesRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *datasetVariablesKey = "datasetVariables";
	node = json_object_get_member(pJsonObject, datasetVariablesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigDatasetVariableRefElement> new_list;
			SendigDatasetVariableRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigDatasetVariableRefElement")) {
					jsonToValue(&inst, temp_json, "SendigDatasetVariableRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasetVariables = new_list;
		}
		
	}
}

SendigDatasetVariablesLinks::SendigDatasetVariablesLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigDatasetVariablesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigDatasetVariablesRef")) {
		SendigDatasetVariablesRef obj = getSelf();
		node = converttoJson(&obj, "SendigDatasetVariablesRef", "");
	}
	else {
		
		SendigDatasetVariablesRef obj = static_cast<SendigDatasetVariablesRef> (getSelf());
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
	if (isprimitive("SendigProductRef")) {
		SendigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SendigProductRef", "");
	}
	else {
		
		SendigProductRef obj = static_cast<SendigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SendigClassRef")) {
		SendigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SendigClassRef", "");
	}
	else {
		
		SendigClassRef obj = static_cast<SendigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SendigDatasetVariablesRef")) {
		SendigDatasetVariablesRef obj = getPriorVersion();
		node = converttoJson(&obj, "SendigDatasetVariablesRef", "");
	}
	else {
		
		SendigDatasetVariablesRef obj = static_cast<SendigDatasetVariablesRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SendigDatasetVariableRefElement")) {
		list<SendigDatasetVariableRefElement> new_list = static_cast<list <SendigDatasetVariableRefElement> > (getDatasetVariables());
		node = converttoJson(&new_list, "SendigDatasetVariableRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SendigDatasetVariableRefElement> new_list = static_cast<list <SendigDatasetVariableRefElement> > (getDatasetVariables());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigDatasetVariableRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigDatasetVariableRefElement obj = *it;
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

SendigDatasetVariablesRef
SendigDatasetVariablesLinks::getSelf()
{
	return self;
}

void
SendigDatasetVariablesLinks::setSelf(SendigDatasetVariablesRef  self)
{
	this->self = self;
}

SdtmDatasetRef
SendigDatasetVariablesLinks::getModelDataset()
{
	return modelDataset;
}

void
SendigDatasetVariablesLinks::setModelDataset(SdtmDatasetRef  modelDataset)
{
	this->modelDataset = modelDataset;
}

SendigProductRef
SendigDatasetVariablesLinks::getParentProduct()
{
	return parentProduct;
}

void
SendigDatasetVariablesLinks::setParentProduct(SendigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SendigClassRef
SendigDatasetVariablesLinks::getParentClass()
{
	return parentClass;
}

void
SendigDatasetVariablesLinks::setParentClass(SendigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

SendigDatasetVariablesRef
SendigDatasetVariablesLinks::getPriorVersion()
{
	return priorVersion;
}

void
SendigDatasetVariablesLinks::setPriorVersion(SendigDatasetVariablesRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SendigDatasetVariableRefElement>
SendigDatasetVariablesLinks::getDatasetVariables()
{
	return datasetVariables;
}

void
SendigDatasetVariablesLinks::setDatasetVariables(std::list <SendigDatasetVariableRefElement> datasetVariables)
{
	this->datasetVariables = datasetVariables;
}



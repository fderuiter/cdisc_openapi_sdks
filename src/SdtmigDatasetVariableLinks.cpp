#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigDatasetVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigDatasetVariableLinks::SdtmigDatasetVariableLinks()
{
	//__init();
}

SdtmigDatasetVariableLinks::~SdtmigDatasetVariableLinks()
{
	//__cleanup();
}

void
SdtmigDatasetVariableLinks::__init()
{
	//self = new SdtmigDatasetVariableRef();
	//new std::list()std::list> codelist;
	//modelClassVariable = new SdtmClassVariableRef();
	//modelDatasetVariable = new SdtmDatasetVariableRef();
	//parentProduct = new SdtmigProductRef();
	//parentDataset = new SdtmigDatasetRef();
	//rootItem = new RootSdtmigDatasetVariableRef();
	//priorVersion = new SdtmigDatasetVariableRef();
}

void
SdtmigDatasetVariableLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(codelist != NULL) {
	//codelist.RemoveAll(true);
	//delete codelist;
	//codelist = NULL;
	//}
	//if(modelClassVariable != NULL) {
	//
	//delete modelClassVariable;
	//modelClassVariable = NULL;
	//}
	//if(modelDatasetVariable != NULL) {
	//
	//delete modelDatasetVariable;
	//modelDatasetVariable = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(parentDataset != NULL) {
	//
	//delete parentDataset;
	//parentDataset = NULL;
	//}
	//if(rootItem != NULL) {
	//
	//delete rootItem;
	//rootItem = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SdtmigDatasetVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariableRef")) {
			jsonToValue(&self, node, "SdtmigDatasetVariableRef", "SdtmigDatasetVariableRef");
		} else {
			
			SdtmigDatasetVariableRef* obj = static_cast<SdtmigDatasetVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *codelistKey = "codelist";
	node = json_object_get_member(pJsonObject, codelistKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RootCtCodelistRefElement> new_list;
			RootCtCodelistRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RootCtCodelistRefElement")) {
					jsonToValue(&inst, temp_json, "RootCtCodelistRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			codelist = new_list;
		}
		
	}
	const gchar *modelClassVariableKey = "modelClassVariable";
	node = json_object_get_member(pJsonObject, modelClassVariableKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassVariableRef")) {
			jsonToValue(&modelClassVariable, node, "SdtmClassVariableRef", "SdtmClassVariableRef");
		} else {
			
			SdtmClassVariableRef* obj = static_cast<SdtmClassVariableRef*> (&modelClassVariable);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelDatasetVariableKey = "modelDatasetVariable";
	node = json_object_get_member(pJsonObject, modelDatasetVariableKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasetVariableRef")) {
			jsonToValue(&modelDatasetVariable, node, "SdtmDatasetVariableRef", "SdtmDatasetVariableRef");
		} else {
			
			SdtmDatasetVariableRef* obj = static_cast<SdtmDatasetVariableRef*> (&modelDatasetVariable);
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
	const gchar *parentDatasetKey = "parentDataset";
	node = json_object_get_member(pJsonObject, parentDatasetKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetRef")) {
			jsonToValue(&parentDataset, node, "SdtmigDatasetRef", "SdtmigDatasetRef");
		} else {
			
			SdtmigDatasetRef* obj = static_cast<SdtmigDatasetRef*> (&parentDataset);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmigDatasetVariableRef")) {
			jsonToValue(&rootItem, node, "RootSdtmigDatasetVariableRef", "RootSdtmigDatasetVariableRef");
		} else {
			
			RootSdtmigDatasetVariableRef* obj = static_cast<RootSdtmigDatasetVariableRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigDatasetVariableRef")) {
			jsonToValue(&priorVersion, node, "SdtmigDatasetVariableRef", "SdtmigDatasetVariableRef");
		} else {
			
			SdtmigDatasetVariableRef* obj = static_cast<SdtmigDatasetVariableRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmigDatasetVariableLinks::SdtmigDatasetVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigDatasetVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigDatasetVariableRef")) {
		SdtmigDatasetVariableRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigDatasetVariableRef", "");
	}
	else {
		
		SdtmigDatasetVariableRef obj = static_cast<SdtmigDatasetVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("RootCtCodelistRefElement")) {
		list<RootCtCodelistRefElement> new_list = static_cast<list <RootCtCodelistRefElement> > (getCodelist());
		node = converttoJson(&new_list, "RootCtCodelistRefElement", "array");
	} else {
		node = json_node_alloc();
		list<RootCtCodelistRefElement> new_list = static_cast<list <RootCtCodelistRefElement> > (getCodelist());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RootCtCodelistRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RootCtCodelistRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *codelistKey = "codelist";
	json_object_set_member(pJsonObject, codelistKey, node);
	if (isprimitive("SdtmClassVariableRef")) {
		SdtmClassVariableRef obj = getModelClassVariable();
		node = converttoJson(&obj, "SdtmClassVariableRef", "");
	}
	else {
		
		SdtmClassVariableRef obj = static_cast<SdtmClassVariableRef> (getModelClassVariable());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelClassVariableKey = "modelClassVariable";
	json_object_set_member(pJsonObject, modelClassVariableKey, node);
	if (isprimitive("SdtmDatasetVariableRef")) {
		SdtmDatasetVariableRef obj = getModelDatasetVariable();
		node = converttoJson(&obj, "SdtmDatasetVariableRef", "");
	}
	else {
		
		SdtmDatasetVariableRef obj = static_cast<SdtmDatasetVariableRef> (getModelDatasetVariable());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelDatasetVariableKey = "modelDatasetVariable";
	json_object_set_member(pJsonObject, modelDatasetVariableKey, node);
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
	if (isprimitive("SdtmigDatasetRef")) {
		SdtmigDatasetRef obj = getParentDataset();
		node = converttoJson(&obj, "SdtmigDatasetRef", "");
	}
	else {
		
		SdtmigDatasetRef obj = static_cast<SdtmigDatasetRef> (getParentDataset());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDatasetKey = "parentDataset";
	json_object_set_member(pJsonObject, parentDatasetKey, node);
	if (isprimitive("RootSdtmigDatasetVariableRef")) {
		RootSdtmigDatasetVariableRef obj = getRootItem();
		node = converttoJson(&obj, "RootSdtmigDatasetVariableRef", "");
	}
	else {
		
		RootSdtmigDatasetVariableRef obj = static_cast<RootSdtmigDatasetVariableRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("SdtmigDatasetVariableRef")) {
		SdtmigDatasetVariableRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigDatasetVariableRef", "");
	}
	else {
		
		SdtmigDatasetVariableRef obj = static_cast<SdtmigDatasetVariableRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SdtmigDatasetVariableRef
SdtmigDatasetVariableLinks::getSelf()
{
	return self;
}

void
SdtmigDatasetVariableLinks::setSelf(SdtmigDatasetVariableRef  self)
{
	this->self = self;
}

std::list<RootCtCodelistRefElement>
SdtmigDatasetVariableLinks::getCodelist()
{
	return codelist;
}

void
SdtmigDatasetVariableLinks::setCodelist(std::list <RootCtCodelistRefElement> codelist)
{
	this->codelist = codelist;
}

SdtmClassVariableRef
SdtmigDatasetVariableLinks::getModelClassVariable()
{
	return modelClassVariable;
}

void
SdtmigDatasetVariableLinks::setModelClassVariable(SdtmClassVariableRef  modelClassVariable)
{
	this->modelClassVariable = modelClassVariable;
}

SdtmDatasetVariableRef
SdtmigDatasetVariableLinks::getModelDatasetVariable()
{
	return modelDatasetVariable;
}

void
SdtmigDatasetVariableLinks::setModelDatasetVariable(SdtmDatasetVariableRef  modelDatasetVariable)
{
	this->modelDatasetVariable = modelDatasetVariable;
}

SdtmigProductRef
SdtmigDatasetVariableLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmigDatasetVariableLinks::setParentProduct(SdtmigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmigDatasetRef
SdtmigDatasetVariableLinks::getParentDataset()
{
	return parentDataset;
}

void
SdtmigDatasetVariableLinks::setParentDataset(SdtmigDatasetRef  parentDataset)
{
	this->parentDataset = parentDataset;
}

RootSdtmigDatasetVariableRef
SdtmigDatasetVariableLinks::getRootItem()
{
	return rootItem;
}

void
SdtmigDatasetVariableLinks::setRootItem(RootSdtmigDatasetVariableRef  rootItem)
{
	this->rootItem = rootItem;
}

SdtmigDatasetVariableRef
SdtmigDatasetVariableLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigDatasetVariableLinks::setPriorVersion(SdtmigDatasetVariableRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



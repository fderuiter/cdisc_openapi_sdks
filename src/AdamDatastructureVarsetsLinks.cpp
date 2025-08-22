#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamDatastructureVarsetsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamDatastructureVarsetsLinks::AdamDatastructureVarsetsLinks()
{
	//__init();
}

AdamDatastructureVarsetsLinks::~AdamDatastructureVarsetsLinks()
{
	//__cleanup();
}

void
AdamDatastructureVarsetsLinks::__init()
{
	//self = new AdamDatastructureVarsetsRef();
	//parentProduct = new AdamProductRef();
	//priorVersion = new AdamDatastructureVarsetsRef();
	//new std::list()std::list> analysisVariableSets;
}

void
AdamDatastructureVarsetsLinks::__cleanup()
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
	//if(analysisVariableSets != NULL) {
	//analysisVariableSets.RemoveAll(true);
	//delete analysisVariableSets;
	//analysisVariableSets = NULL;
	//}
	//
}

void
AdamDatastructureVarsetsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVarsetsRef")) {
			jsonToValue(&self, node, "AdamDatastructureVarsetsRef", "AdamDatastructureVarsetsRef");
		} else {
			
			AdamDatastructureVarsetsRef* obj = static_cast<AdamDatastructureVarsetsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&parentProduct, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureVarsetsRef")) {
			jsonToValue(&priorVersion, node, "AdamDatastructureVarsetsRef", "AdamDatastructureVarsetsRef");
		} else {
			
			AdamDatastructureVarsetsRef* obj = static_cast<AdamDatastructureVarsetsRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *analysisVariableSetsKey = "analysisVariableSets";
	node = json_object_get_member(pJsonObject, analysisVariableSetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<AdamVarsetRefElement> new_list;
			AdamVarsetRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("AdamVarsetRefElement")) {
					jsonToValue(&inst, temp_json, "AdamVarsetRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			analysisVariableSets = new_list;
		}
		
	}
}

AdamDatastructureVarsetsLinks::AdamDatastructureVarsetsLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamDatastructureVarsetsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamDatastructureVarsetsRef")) {
		AdamDatastructureVarsetsRef obj = getSelf();
		node = converttoJson(&obj, "AdamDatastructureVarsetsRef", "");
	}
	else {
		
		AdamDatastructureVarsetsRef obj = static_cast<AdamDatastructureVarsetsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getParentProduct();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("AdamDatastructureVarsetsRef")) {
		AdamDatastructureVarsetsRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamDatastructureVarsetsRef", "");
	}
	else {
		
		AdamDatastructureVarsetsRef obj = static_cast<AdamDatastructureVarsetsRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("AdamVarsetRefElement")) {
		list<AdamVarsetRefElement> new_list = static_cast<list <AdamVarsetRefElement> > (getAnalysisVariableSets());
		node = converttoJson(&new_list, "AdamVarsetRefElement", "array");
	} else {
		node = json_node_alloc();
		list<AdamVarsetRefElement> new_list = static_cast<list <AdamVarsetRefElement> > (getAnalysisVariableSets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<AdamVarsetRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			AdamVarsetRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *analysisVariableSetsKey = "analysisVariableSets";
	json_object_set_member(pJsonObject, analysisVariableSetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AdamDatastructureVarsetsRef
AdamDatastructureVarsetsLinks::getSelf()
{
	return self;
}

void
AdamDatastructureVarsetsLinks::setSelf(AdamDatastructureVarsetsRef  self)
{
	this->self = self;
}

AdamProductRef
AdamDatastructureVarsetsLinks::getParentProduct()
{
	return parentProduct;
}

void
AdamDatastructureVarsetsLinks::setParentProduct(AdamProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

AdamDatastructureVarsetsRef
AdamDatastructureVarsetsLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamDatastructureVarsetsLinks::setPriorVersion(AdamDatastructureVarsetsRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<AdamVarsetRefElement>
AdamDatastructureVarsetsLinks::getAnalysisVariableSets()
{
	return analysisVariableSets;
}

void
AdamDatastructureVarsetsLinks::setAnalysisVariableSets(std::list <AdamVarsetRefElement> analysisVariableSets)
{
	this->analysisVariableSets = analysisVariableSets;
}



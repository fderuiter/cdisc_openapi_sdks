#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamVariableLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamVariableLinks::AdamVariableLinks()
{
	//__init();
}

AdamVariableLinks::~AdamVariableLinks()
{
	//__cleanup();
}

void
AdamVariableLinks::__init()
{
	//self = new AdamVariableRef();
	//codelist = new RootCtCodelistRef();
	//parentProduct = new AdamProductRef();
	//parentDatastructure = new AdamDatastructureRef();
	//parentVariableSet = new AdamVarsetRef();
	//priorVersion = new AdamVariableRef();
}

void
AdamVariableLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(codelist != NULL) {
	//
	//delete codelist;
	//codelist = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(parentDatastructure != NULL) {
	//
	//delete parentDatastructure;
	//parentDatastructure = NULL;
	//}
	//if(parentVariableSet != NULL) {
	//
	//delete parentVariableSet;
	//parentVariableSet = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
AdamVariableLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVariableRef")) {
			jsonToValue(&self, node, "AdamVariableRef", "AdamVariableRef");
		} else {
			
			AdamVariableRef* obj = static_cast<AdamVariableRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *codelistKey = "codelist";
	node = json_object_get_member(pJsonObject, codelistKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelistRef")) {
			jsonToValue(&codelist, node, "RootCtCodelistRef", "RootCtCodelistRef");
		} else {
			
			RootCtCodelistRef* obj = static_cast<RootCtCodelistRef*> (&codelist);
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
	const gchar *parentDatastructureKey = "parentDatastructure";
	node = json_object_get_member(pJsonObject, parentDatastructureKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamDatastructureRef")) {
			jsonToValue(&parentDatastructure, node, "AdamDatastructureRef", "AdamDatastructureRef");
		} else {
			
			AdamDatastructureRef* obj = static_cast<AdamDatastructureRef*> (&parentDatastructure);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentVariableSetKey = "parentVariableSet";
	node = json_object_get_member(pJsonObject, parentVariableSetKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVarsetRef")) {
			jsonToValue(&parentVariableSet, node, "AdamVarsetRef", "AdamVarsetRef");
		} else {
			
			AdamVarsetRef* obj = static_cast<AdamVarsetRef*> (&parentVariableSet);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamVariableRef")) {
			jsonToValue(&priorVersion, node, "AdamVariableRef", "AdamVariableRef");
		} else {
			
			AdamVariableRef* obj = static_cast<AdamVariableRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AdamVariableLinks::AdamVariableLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamVariableLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamVariableRef")) {
		AdamVariableRef obj = getSelf();
		node = converttoJson(&obj, "AdamVariableRef", "");
	}
	else {
		
		AdamVariableRef obj = static_cast<AdamVariableRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("RootCtCodelistRef")) {
		RootCtCodelistRef obj = getCodelist();
		node = converttoJson(&obj, "RootCtCodelistRef", "");
	}
	else {
		
		RootCtCodelistRef obj = static_cast<RootCtCodelistRef> (getCodelist());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *codelistKey = "codelist";
	json_object_set_member(pJsonObject, codelistKey, node);
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
	if (isprimitive("AdamDatastructureRef")) {
		AdamDatastructureRef obj = getParentDatastructure();
		node = converttoJson(&obj, "AdamDatastructureRef", "");
	}
	else {
		
		AdamDatastructureRef obj = static_cast<AdamDatastructureRef> (getParentDatastructure());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDatastructureKey = "parentDatastructure";
	json_object_set_member(pJsonObject, parentDatastructureKey, node);
	if (isprimitive("AdamVarsetRef")) {
		AdamVarsetRef obj = getParentVariableSet();
		node = converttoJson(&obj, "AdamVarsetRef", "");
	}
	else {
		
		AdamVarsetRef obj = static_cast<AdamVarsetRef> (getParentVariableSet());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentVariableSetKey = "parentVariableSet";
	json_object_set_member(pJsonObject, parentVariableSetKey, node);
	if (isprimitive("AdamVariableRef")) {
		AdamVariableRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamVariableRef", "");
	}
	else {
		
		AdamVariableRef obj = static_cast<AdamVariableRef> (getPriorVersion());
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

AdamVariableRef
AdamVariableLinks::getSelf()
{
	return self;
}

void
AdamVariableLinks::setSelf(AdamVariableRef  self)
{
	this->self = self;
}

RootCtCodelistRef
AdamVariableLinks::getCodelist()
{
	return codelist;
}

void
AdamVariableLinks::setCodelist(RootCtCodelistRef  codelist)
{
	this->codelist = codelist;
}

AdamProductRef
AdamVariableLinks::getParentProduct()
{
	return parentProduct;
}

void
AdamVariableLinks::setParentProduct(AdamProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

AdamDatastructureRef
AdamVariableLinks::getParentDatastructure()
{
	return parentDatastructure;
}

void
AdamVariableLinks::setParentDatastructure(AdamDatastructureRef  parentDatastructure)
{
	this->parentDatastructure = parentDatastructure;
}

AdamVarsetRef
AdamVariableLinks::getParentVariableSet()
{
	return parentVariableSet;
}

void
AdamVariableLinks::setParentVariableSet(AdamVarsetRef  parentVariableSet)
{
	this->parentVariableSet = parentVariableSet;
}

AdamVariableRef
AdamVariableLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamVariableLinks::setPriorVersion(AdamVariableRef  priorVersion)
{
	this->priorVersion = priorVersion;
}



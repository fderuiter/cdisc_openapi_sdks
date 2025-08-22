#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigProductDomainsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigProductDomainsLinks::CdashigProductDomainsLinks()
{
	//__init();
}

CdashigProductDomainsLinks::~CdashigProductDomainsLinks()
{
	//__cleanup();
}

void
CdashigProductDomainsLinks::__init()
{
	//self = new CdashigProductDomainsRef();
	//parentProduct = new CdashigProductRef();
	//new std::list()std::list> domains;
}

void
CdashigProductDomainsLinks::__cleanup()
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
	//if(domains != NULL) {
	//domains.RemoveAll(true);
	//delete domains;
	//domains = NULL;
	//}
	//
}

void
CdashigProductDomainsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductDomainsRef")) {
			jsonToValue(&self, node, "CdashigProductDomainsRef", "CdashigProductDomainsRef");
		} else {
			
			CdashigProductDomainsRef* obj = static_cast<CdashigProductDomainsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductRef")) {
			jsonToValue(&parentProduct, node, "CdashigProductRef", "CdashigProductRef");
		} else {
			
			CdashigProductRef* obj = static_cast<CdashigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *domainsKey = "domains";
	node = json_object_get_member(pJsonObject, domainsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomainRefElement> new_list;
			CdashigDomainRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomainRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigDomainRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domains = new_list;
		}
		
	}
}

CdashigProductDomainsLinks::CdashigProductDomainsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigProductDomainsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProductDomainsRef")) {
		CdashigProductDomainsRef obj = getSelf();
		node = converttoJson(&obj, "CdashigProductDomainsRef", "");
	}
	else {
		
		CdashigProductDomainsRef obj = static_cast<CdashigProductDomainsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigProductRef")) {
		CdashigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashigProductRef", "");
	}
	else {
		
		CdashigProductRef obj = static_cast<CdashigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashigDomainRefElement")) {
		list<CdashigDomainRefElement> new_list = static_cast<list <CdashigDomainRefElement> > (getDomains());
		node = converttoJson(&new_list, "CdashigDomainRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomainRefElement> new_list = static_cast<list <CdashigDomainRefElement> > (getDomains());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomainRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomainRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *domainsKey = "domains";
	json_object_set_member(pJsonObject, domainsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigProductDomainsRef
CdashigProductDomainsLinks::getSelf()
{
	return self;
}

void
CdashigProductDomainsLinks::setSelf(CdashigProductDomainsRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigProductDomainsLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigProductDomainsLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

std::list<CdashigDomainRefElement>
CdashigProductDomainsLinks::getDomains()
{
	return domains;
}

void
CdashigProductDomainsLinks::setDomains(std::list <CdashigDomainRefElement> domains)
{
	this->domains = domains;
}



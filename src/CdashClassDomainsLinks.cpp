#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashClassDomainsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashClassDomainsLinks::CdashClassDomainsLinks()
{
	//__init();
}

CdashClassDomainsLinks::~CdashClassDomainsLinks()
{
	//__cleanup();
}

void
CdashClassDomainsLinks::__init()
{
	//self = new CdashClassDomainsRef();
	//new std::list()std::list> domains;
}

void
CdashClassDomainsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(domains != NULL) {
	//domains.RemoveAll(true);
	//delete domains;
	//domains = NULL;
	//}
	//
}

void
CdashClassDomainsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassDomainsRef")) {
			jsonToValue(&self, node, "CdashClassDomainsRef", "CdashClassDomainsRef");
		} else {
			
			CdashClassDomainsRef* obj = static_cast<CdashClassDomainsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *domainsKey = "domains";
	node = json_object_get_member(pJsonObject, domainsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashDomainRefElement> new_list;
			CdashDomainRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashDomainRefElement")) {
					jsonToValue(&inst, temp_json, "CdashDomainRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			domains = new_list;
		}
		
	}
}

CdashClassDomainsLinks::CdashClassDomainsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashClassDomainsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClassDomainsRef")) {
		CdashClassDomainsRef obj = getSelf();
		node = converttoJson(&obj, "CdashClassDomainsRef", "");
	}
	else {
		
		CdashClassDomainsRef obj = static_cast<CdashClassDomainsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashDomainRefElement")) {
		list<CdashDomainRefElement> new_list = static_cast<list <CdashDomainRefElement> > (getDomains());
		node = converttoJson(&new_list, "CdashDomainRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashDomainRefElement> new_list = static_cast<list <CdashDomainRefElement> > (getDomains());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashDomainRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashDomainRefElement obj = *it;
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

CdashClassDomainsRef
CdashClassDomainsLinks::getSelf()
{
	return self;
}

void
CdashClassDomainsLinks::setSelf(CdashClassDomainsRef  self)
{
	this->self = self;
}

std::list<CdashDomainRefElement>
CdashClassDomainsLinks::getDomains()
{
	return domains;
}

void
CdashClassDomainsLinks::setDomains(std::list <CdashDomainRefElement> domains)
{
	this->domains = domains;
}



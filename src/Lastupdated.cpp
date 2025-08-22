#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Lastupdated.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Lastupdated::Lastupdated()
{
	//__init();
}

Lastupdated::~Lastupdated()
{
	//__cleanup();
}

void
Lastupdated::__init()
{
	//_links = new LastupdatedLinks();
	//overall = std::string();
	//dataanalysis = std::string();
	//datacollection = std::string();
	//datatabulation = std::string();
	//measure = std::string();
	//terminology = std::string();
}

void
Lastupdated::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//if(overall != NULL) {
	//
	//delete overall;
	//overall = NULL;
	//}
	//if(dataanalysis != NULL) {
	//
	//delete dataanalysis;
	//dataanalysis = NULL;
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
	//if(measure != NULL) {
	//
	//delete measure;
	//measure = NULL;
	//}
	//if(terminology != NULL) {
	//
	//delete terminology;
	//terminology = NULL;
	//}
	//
}

void
Lastupdated::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("LastupdatedLinks")) {
			jsonToValue(&_links, node, "LastupdatedLinks", "LastupdatedLinks");
		} else {
			
			LastupdatedLinks* obj = static_cast<LastupdatedLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *overallKey = "overall";
	node = json_object_get_member(pJsonObject, overallKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&overall, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataanalysisKey = "data-analysis";
	node = json_object_get_member(pJsonObject, dataanalysisKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dataanalysis, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datacollectionKey = "data-collection";
	node = json_object_get_member(pJsonObject, datacollectionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datacollection, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datatabulationKey = "data-tabulation";
	node = json_object_get_member(pJsonObject, datatabulationKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datatabulation, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *measureKey = "measure";
	node = json_object_get_member(pJsonObject, measureKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&measure, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *terminologyKey = "terminology";
	node = json_object_get_member(pJsonObject, terminologyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&terminology, node, "std::string", "");
		} else {
			
		}
	}
}

Lastupdated::Lastupdated(char* json)
{
	this->fromJson(json);
}

char*
Lastupdated::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("LastupdatedLinks")) {
		LastupdatedLinks obj = getLinks();
		node = converttoJson(&obj, "LastupdatedLinks", "");
	}
	else {
		
		LastupdatedLinks obj = static_cast<LastupdatedLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOverall();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *overallKey = "overall";
	json_object_set_member(pJsonObject, overallKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataanalysis();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dataanalysisKey = "data-analysis";
	json_object_set_member(pJsonObject, dataanalysisKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatacollection();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datacollectionKey = "data-collection";
	json_object_set_member(pJsonObject, datacollectionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatatabulation();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datatabulationKey = "data-tabulation";
	json_object_set_member(pJsonObject, datatabulationKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMeasure();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *measureKey = "measure";
	json_object_set_member(pJsonObject, measureKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTerminology();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *terminologyKey = "terminology";
	json_object_set_member(pJsonObject, terminologyKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

LastupdatedLinks
Lastupdated::getLinks()
{
	return _links;
}

void
Lastupdated::setLinks(LastupdatedLinks  _links)
{
	this->_links = _links;
}

std::string
Lastupdated::getOverall()
{
	return overall;
}

void
Lastupdated::setOverall(std::string  overall)
{
	this->overall = overall;
}

std::string
Lastupdated::getDataanalysis()
{
	return dataanalysis;
}

void
Lastupdated::setDataanalysis(std::string  dataanalysis)
{
	this->dataanalysis = dataanalysis;
}

std::string
Lastupdated::getDatacollection()
{
	return datacollection;
}

void
Lastupdated::setDatacollection(std::string  datacollection)
{
	this->datacollection = datacollection;
}

std::string
Lastupdated::getDatatabulation()
{
	return datatabulation;
}

void
Lastupdated::setDatatabulation(std::string  datatabulation)
{
	this->datatabulation = datatabulation;
}

std::string
Lastupdated::getMeasure()
{
	return measure;
}

void
Lastupdated::setMeasure(std::string  measure)
{
	this->measure = measure;
}

std::string
Lastupdated::getTerminology()
{
	return terminology;
}

void
Lastupdated::setTerminology(std::string  terminology)
{
	this->terminology = terminology;
}



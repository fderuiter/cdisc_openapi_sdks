/*
 * CdashigScenario.h
 *
 * 
 */

#ifndef _CdashigScenario_H_
#define _CdashigScenario_H_


#include <string>
#include "CdashigScenarioField.h"
#include "CdashigScenarioLinks.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CdashigScenario : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenario();
	CdashigScenario(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenario();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	std::string getDomain();

	/*! \brief Set 
	 */
	void setDomain(std::string  domain);
	/*! \brief Get 
	 */
	std::string getScenario();

	/*! \brief Set 
	 */
	void setScenario(std::string  scenario);
	/*! \brief Get 
	 */
	CdashigScenarioLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigScenarioLinks  _links);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioField> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <CdashigScenarioField> fields);

private:
	std::string ordinal;
	std::string domain;
	std::string scenario;
	CdashigScenarioLinks _links;
	std::list <CdashigScenarioField>fields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenario_H_ */

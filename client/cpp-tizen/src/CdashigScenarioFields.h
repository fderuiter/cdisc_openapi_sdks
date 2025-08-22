/*
 * CdashigScenarioFields.h
 *
 * 
 */

#ifndef _CdashigScenarioFields_H_
#define _CdashigScenarioFields_H_


#include <string>
#include "CdashigScenarioFieldsLinks.h"
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

class CdashigScenarioFields : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenarioFields();
	CdashigScenarioFields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenarioFields();

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
	CdashigScenarioFieldsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigScenarioFieldsLinks  _links);

private:
	std::string ordinal;
	std::string domain;
	std::string scenario;
	CdashigScenarioFieldsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenarioFields_H_ */

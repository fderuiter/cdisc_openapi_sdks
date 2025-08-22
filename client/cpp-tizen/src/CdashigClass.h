/*
 * CdashigClass.h
 *
 * 
 */

#ifndef _CdashigClass_H_
#define _CdashigClass_H_


#include <string>
#include "CdashigClassLinks.h"
#include "CdashigDomain.h"
#include "CdashigScenario.h"
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

class CdashigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClass();
	CdashigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClass();

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
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	CdashigClassLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigClassLinks  _links);
	/*! \brief Get 
	 */
	std::list<CdashigDomain> getDomains();

	/*! \brief Set 
	 */
	void setDomains(std::list <CdashigDomain> domains);
	/*! \brief Get 
	 */
	std::list<CdashigScenario> getScenarios();

	/*! \brief Set 
	 */
	void setScenarios(std::list <CdashigScenario> scenarios);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	CdashigClassLinks _links;
	std::list <CdashigDomain>domains;
	std::list <CdashigScenario>scenarios;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClass_H_ */

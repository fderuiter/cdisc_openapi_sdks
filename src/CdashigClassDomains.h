/*
 * CdashigClassDomains.h
 *
 * 
 */

#ifndef _CdashigClassDomains_H_
#define _CdashigClassDomains_H_


#include <string>
#include "CdashigClassDomainsLinks.h"
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

class CdashigClassDomains : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClassDomains();
	CdashigClassDomains(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClassDomains();

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
	CdashigClassDomainsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigClassDomainsLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	CdashigClassDomainsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClassDomains_H_ */

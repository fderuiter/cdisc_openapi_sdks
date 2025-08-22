/*
 * CdashigDomain.h
 *
 * 
 */

#ifndef _CdashigDomain_H_
#define _CdashigDomain_H_


#include <string>
#include "CdashigDomainField.h"
#include "CdashigDomainLinks.h"
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

class CdashigDomain : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigDomain();
	CdashigDomain(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigDomain();

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
	CdashigDomainLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigDomainLinks  _links);
	/*! \brief Get 
	 */
	std::list<CdashigDomainField> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <CdashigDomainField> fields);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	CdashigDomainLinks _links;
	std::list <CdashigDomainField>fields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigDomain_H_ */

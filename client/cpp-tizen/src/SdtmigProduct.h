/*
 * SdtmigProduct.h
 *
 * 
 */

#ifndef _SdtmigProduct_H_
#define _SdtmigProduct_H_


#include <string>
#include "SdtmigClass.h"
#include "SdtmigProductLinks.h"
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

class SdtmigProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigProduct();
	SdtmigProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string getSource();

	/*! \brief Set 
	 */
	void setSource(std::string  source);
	/*! \brief Get 
	 */
	std::string getEffectiveDate();

	/*! \brief Set 
	 */
	void setEffectiveDate(std::string  effectiveDate);
	/*! \brief Get 
	 */
	std::string getRegistrationStatus();

	/*! \brief Set 
	 */
	void setRegistrationStatus(std::string  registrationStatus);
	/*! \brief Get 
	 */
	std::string getVersion();

	/*! \brief Set 
	 */
	void setVersion(std::string  version);
	/*! \brief Get 
	 */
	SdtmigProductLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmigProductLinks  _links);
	/*! \brief Get 
	 */
	std::list<SdtmigClass> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <SdtmigClass> classes);

private:
	std::string name;
	std::string label;
	std::string description;
	std::string source;
	std::string effectiveDate;
	std::string registrationStatus;
	std::string version;
	SdtmigProductLinks _links;
	std::list <SdtmigClass>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigProduct_H_ */

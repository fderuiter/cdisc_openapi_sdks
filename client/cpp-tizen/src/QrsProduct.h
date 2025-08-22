/*
 * QrsProduct.h
 *
 * 
 */

#ifndef _QrsProduct_H_
#define _QrsProduct_H_


#include <string>
#include "QrsItem.h"
#include "QrsProductLinks.h"
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

class QrsProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsProduct();
	QrsProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsProduct();

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
	std::string getEffectiveDate();

	/*! \brief Set 
	 */
	void setEffectiveDate(std::string  effectiveDate);
	/*! \brief Get 
	 */
	std::string getUntilDate();

	/*! \brief Set 
	 */
	void setUntilDate(std::string  untilDate);
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
	std::string getQrsType();

	/*! \brief Set 
	 */
	void setQrsType(std::string  qrsType);
	/*! \brief Get 
	 */
	QrsProductLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(QrsProductLinks  _links);
	/*! \brief Get 
	 */
	std::list<QrsItem> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <QrsItem> items);

private:
	std::string name;
	std::string label;
	std::string description;
	std::string effectiveDate;
	std::string untilDate;
	std::string registrationStatus;
	std::string version;
	std::string qrsType;
	QrsProductLinks _links;
	std::list <QrsItem>items;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsProduct_H_ */

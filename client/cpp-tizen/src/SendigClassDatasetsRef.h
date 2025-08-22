/*
 * SendigClassDatasetsRef.h
 *
 * 
 */

#ifndef _SendigClassDatasetsRef_H_
#define _SendigClassDatasetsRef_H_


#include <string>
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

class SendigClassDatasetsRef : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClassDatasetsRef();
	SendigClassDatasetsRef(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClassDatasetsRef();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getHref();

	/*! \brief Set 
	 */
	void setHref(std::string  href);
	/*! \brief Get 
	 */
	std::string getTitle();

	/*! \brief Set 
	 */
	void setTitle(std::string  title);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);

private:
	std::string href;
	std::string title;
	std::string type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClassDatasetsRef_H_ */

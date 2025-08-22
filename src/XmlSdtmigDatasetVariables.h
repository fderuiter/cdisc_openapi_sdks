/*
 * XmlSdtmigDatasetVariables.h
 *
 * 
 */

#ifndef _XmlSdtmigDatasetVariables_H_
#define _XmlSdtmigDatasetVariables_H_


#include <string>
#include "SdtmigDatasetVariables.h"
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

class XmlSdtmigDatasetVariables : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigDatasetVariables();
	XmlSdtmigDatasetVariables(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigDatasetVariables();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetVariables getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetVariables  self);

private:
	SdtmigDatasetVariables self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigDatasetVariables_H_ */

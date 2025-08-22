/*
 * XmlSdtmDatasetVariables.h
 *
 * 
 */

#ifndef _XmlSdtmDatasetVariables_H_
#define _XmlSdtmDatasetVariables_H_


#include <string>
#include "SdtmDatasetVariables.h"
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

class XmlSdtmDatasetVariables : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmDatasetVariables();
	XmlSdtmDatasetVariables(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmDatasetVariables();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetVariables getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetVariables  self);

private:
	SdtmDatasetVariables self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmDatasetVariables_H_ */

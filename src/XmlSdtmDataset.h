/*
 * XmlSdtmDataset.h
 *
 * 
 */

#ifndef _XmlSdtmDataset_H_
#define _XmlSdtmDataset_H_


#include <string>
#include "SdtmDataset.h"
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

class XmlSdtmDataset : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmDataset();
	XmlSdtmDataset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmDataset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDataset getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDataset  self);

private:
	SdtmDataset self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmDataset_H_ */

/*
 * XmlSendigDataset.h
 *
 * 
 */

#ifndef _XmlSendigDataset_H_
#define _XmlSendigDataset_H_


#include <string>
#include "SendigDataset.h"
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

class XmlSendigDataset : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigDataset();
	XmlSendigDataset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigDataset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDataset getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDataset  self);

private:
	SendigDataset self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigDataset_H_ */

///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2018 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: private_key.hpp
///
/// Author: $author$
///   Date: 3/14/2018
///////////////////////////////////////////////////////////////////////
#ifndef _CIFRA_CRYPTO_RSA_MP_PRIVATE_KEY_HPP
#define _CIFRA_CRYPTO_RSA_MP_PRIVATE_KEY_HPP
#include "cifra/crypto/base/base.hpp"

namespace cifra {
namespace crypto {
namespace rsa {
namespace mp {

///////////////////////////////////////////////////////////////////////
///  Class: private_key_implementt
///////////////////////////////////////////////////////////////////////
template
<class TImplements = key_implement>

class _EXPORT_CLASS private_key_implementt: virtual public TImplements {
public:
    typedef TImplements Implements;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef private_key_implementt<> private_key_implement;

///////////////////////////////////////////////////////////////////////
///  Class: private_keyt
///////////////////////////////////////////////////////////////////////
template
<class TImplements, class TExtends>
class _EXPORT_CLASS private_keyt: virtual public TImplements,public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    private_keyt() {
    }
    virtual ~private_keyt() {
    }
};


} // namespace mp 
} // namespace rsa 
} // namespace crypto 
} // namespace cifra 


#endif // _CIFRA_CRYPTO_RSA_MP_PRIVATE_KEY_HPP 

        


///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
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
///   File: main.hpp
///
/// Author: $author$
///   Date: 2/9/2020
///////////////////////////////////////////////////////////////////////
#ifndef CIFRA_APP_CONSOLE_RANDOM_MAIN_HPP
#define CIFRA_APP_CONSOLE_RANDOM_MAIN_HPP

#include "cifra/app/console/random/main_opt.hpp"
#include "cifra/crypto/random/pseudo/generator.hpp"
#include "xos/base/array.hpp"

namespace cifra {
namespace app {
namespace console {
namespace random {

///////////////////////////////////////////////////////////////////////
///  Class: maint
///////////////////////////////////////////////////////////////////////
template <class TExtends = main_opt, class TImplements = typename TExtends::Implements>
class _EXPORT_CLASS maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef maint Derives;

    typedef typename Extends::string_t string_t;
    typedef typename Extends::char_t char_t;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    maint() {
    }
    virtual ~maint() {
    }
private:
    maint(const maint &copy) {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    int virtual run(int argc, char_t** argv, char** env) {
        int err = 0;
        size_t size = 1024, length = 0; byte_t* bytes = 0;
        xos::base::byte_array array(size);
        crypto::random::pseudo::generator r;

        if ((bytes = array.elements()) && (size <= (array.size()))) {
            this->outl("r.generate(bytes, size = ", xos::unsigned_to_string(size).chars(), ")...", "\n", NULL);
            if (size <= (length = r.generate(bytes, size))) {
                this->outl("...", xos::unsigned_to_string(length).chars(), " = r.generate(bytes, size = ", xos::unsigned_to_string(size).chars(), ")", "\n", NULL);
                this->outxln(bytes, length);
            } else {
                this->outl("...failed ", xos::unsigned_to_string(length).chars(), " = r.generate(bytes, size = ", xos::unsigned_to_string(size).chars(), ")", "\n", NULL);
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
}; /// class _EXPORT_CLASS maint

typedef maint<> main;


} /// namespace random
} /// namespace console
} /// namespace app
} /// namespace cifra

#endif /// ndef CIFRA_APP_CONSOLE_RANDOM_MAIN_HPP

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
///   Date: 2/10/2020
///////////////////////////////////////////////////////////////////////
#ifndef _CIFRA_APP_CONSOLE_UUID_MAIN_HPP
#define _CIFRA_APP_CONSOLE_UUID_MAIN_HPP

#include "cifra/app/console/uuid/main_opt.hpp"
#include "cifra/universal/unique/posix/identifier.hpp"

namespace cifra {
namespace app {
namespace console {
namespace uuid {

typedef main_opt::Implements maint_implements;
typedef main_opt maint_extends;
///////////////////////////////////////////////////////////////////////
///  Class: maint
///////////////////////////////////////////////////////////////////////
template <class TImplements = maint_implements, class TExtends = maint_extends>
class _EXPORT_CLASS maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef maint Derives;
    
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
    virtual int run(int argc, char_t** argv, char** env) {
        int err = 0;
        universal::unique::posix::identifier uuid;
        
        this->outlln("uuid.generate()...", NULL);
        if ((uuid.generate())) {
            this->outlln("...uuid.generate()", NULL);
            this->outlln(uuid.string().chars(), NULL);
        } else {
            this->outlln("...failed on uuid.generate()", NULL);
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
}; /// class _EXPORT_CLASS maint
typedef maint<> main;

} /// namespace uuid
} /// namespace console
} /// namespace app
} /// namespace cifra

#endif /// _CIFRA_APP_CONSOLE_UUID_MAIN_HPP 

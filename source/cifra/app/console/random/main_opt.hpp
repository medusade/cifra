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
///   File: main_opt.hpp
///
/// Author: $author$
///   Date: 2/9/2020
///////////////////////////////////////////////////////////////////////
#ifndef CIFRA_APP_CONSOLE_RANDOM_MAIN_OPT_HPP
#define CIFRA_APP_CONSOLE_RANDOM_MAIN_OPT_HPP

#include "cifra/console/main.hpp"

namespace cifra {
namespace app {
namespace console {
namespace random {

///////////////////////////////////////////////////////////////////////
///  Class: main_optt
///////////////////////////////////////////////////////////////////////
template <class TExtends = cifra::console::main, class TImplements = typename TExtends::Implements>
class _EXPORT_CLASS main_optt: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef main_optt Derives;

    typedef typename Extends::string_t string_t;
    typedef typename Extends::char_t char_t;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main_optt() {
    }
    virtual ~main_optt() {
    }
private:
    main_optt(const main_optt &copy) {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
}; /// class _EXPORT_CLASS main_optt

typedef main_optt<> main_opt;


} /// namespace random
} /// namespace console
} /// namespace app
} /// namespace cifra

#endif /// ndef CIFRA_APP_CONSOLE_RANDOM_MAIN_OPT_HPP

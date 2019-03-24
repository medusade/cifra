///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2019 $organization$
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
///   Date: 3/17/2019
///////////////////////////////////////////////////////////////////////
#ifndef _CIFRA_APP_CONSOLE_CIFRA_MAIN_OPT_HPP
#define _CIFRA_APP_CONSOLE_CIFRA_MAIN_OPT_HPP

#include "cifra/console/lib/cifra/version/main.hpp"

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPT "hash"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_REQUIRED MAIN_OPT_ARGUMENT_REQUIRED
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_RESULT 0
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_C "m"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_S "md5"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_C "1"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_S "sha1"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_C "2"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_S "sha256"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_C "5"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_S "sha512"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG "{ " \
    "(" CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_C ")" \
        CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_S \
    " | (" CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_C ")" \
           CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_S \
    " | (" CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_C ")" \
           CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_S \
    " | (" CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_C ")" \
           CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_S \
    " }"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTUSE ""
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_S "h:"
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_C 'h'
#define CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTION \
   {CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPT, \
    CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_REQUIRED, \
    CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_RESULT, \
    CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_C}, \

#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPT "merkel-hash"
#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTARG CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG
#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTUSE CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTUSE
#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_S "m:"
#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_C 'm'
#define CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTION \
   {CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPT, \
    CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_REQUIRED, \
    CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_RESULT, \
    CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_C}, \

#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPT "plain-text"
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG_REQUIRED MAIN_OPT_ARGUMENT_REQUIRED
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG_RESULT 0
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG "string"
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTUSE "Plain text"
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_S "p:"
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_C 'p'
#define CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTION \
   {CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPT, \
    CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG_REQUIRED, \
    CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG_RESULT, \
    CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_C}, \

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define CIFRA_CONSOLE_CIFRA_MAIN_OPTIONS_CHARS \
   CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_S \
   CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_S \
   CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_S \
   CIFRA_CONSOLE_MAIN_OPTIONS_CHARS

#define CIFRA_CONSOLE_CIFRA_MAIN_OPTIONS_OPTIONS \
   CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTION \
   CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTION \
   CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTION \
   CIFRA_CONSOLE_MAIN_OPTIONS_OPTIONS

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define CIFRA_CONSOLE_CIFRA_MAIN_SOURCE_ARG "[source]"
#define CIFRA_CONSOLE_CIFRA_MAIN_SOURCE_ARG_USE "source file"

#define CIFRA_CONSOLE_CIFRA_MAIN_TARGET_ARG "[target]"
#define CIFRA_CONSOLE_CIFRA_MAIN_TARGET_ARG_USE "target file"

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define CIFRA_CONSOLE_CIFRA_MAIN_ARGS \
    CIFRA_CONSOLE_CIFRA_MAIN_SOURCE_ARG " " /*\
    CIFRA_CONSOLE_CIFRA_MAIN_TARGET_ARG " " \*/

#define CIFRA_CONSOLE_CIFRA_MAIN_ARGV \
    CIFRA_CONSOLE_CIFRA_MAIN_SOURCE_ARG " - " CIFRA_CONSOLE_CIFRA_MAIN_SOURCE_ARG_USE, /*\
    CIFRA_CONSOLE_CIFRA_MAIN_TARGET_ARG " - " CIFRA_CONSOLE_CIFRA_MAIN_TARGET_ARG_USE, \*/

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////

namespace cifra {
namespace app {
namespace console {
namespace cifra {

typedef ::cifra::console::lib::cifra::version::maint
< ::cifra::console::main::Implements, ::cifra::console::main> main_opt_extends;
typedef main_opt_extends::Implements main_opt_implements;
///////////////////////////////////////////////////////////////////////
///  Class: main_opt
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main_opt: virtual public main_opt_implements, public main_opt_extends {
public:
    typedef main_opt_implements Implements;
    typedef main_opt_extends Extends;
    typedef main_opt Derives;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main_opt() {
    }
    virtual ~main_opt() {
    }
private:
    main_opt(const main_opt& copy) {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int on_hash_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        return err;
    }
    virtual int on_merkel_hash_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        return err;
    }
    virtual int on_plain_text_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int on_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        switch(optval) {
        case CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_C:
            err = on_hash_option
            (optval, optarg, optname, optind, argc, argv, env);
            break;
        case CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_C:
            err = on_merkel_hash_option
            (optval, optarg, optname, optind, argc, argv, env);
            break;
        case CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_C:
            err = on_plain_text_option
            (optval, optarg, optname, optind, argc, argv, env);
            break;
        default:
            err = Extends::on_option
            (optval, optarg, optname, optind, argc, argv, env);
        }
        return err;
    }
    virtual const char* option_usage
    (const char*& optarg, const struct option* longopt) {
        const char* chars = "";
        switch(longopt->val) {
        case CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTVAL_C:
            optarg = CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG;
            chars = CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTUSE;
            break;
        case CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTVAL_C:
            optarg = CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTARG;
            chars = CIFRA_CONSOLE_CIFRA_MAIN_MERKEL_HASH_OPTUSE;
            break;
        case CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTVAL_C:
            optarg = CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTARG;
            chars = CIFRA_CONSOLE_CIFRA_MAIN_PLAIN_OPTUSE;
            break;
        default:
            chars = Extends::option_usage(optarg, longopt);
        }
        return chars;
    }
    virtual const char* options(const struct option*& longopts) {
        int err = 0;
        static const char* chars = CIFRA_CONSOLE_CIFRA_MAIN_OPTIONS_CHARS;
        static struct option optstruct[]= {
            CIFRA_CONSOLE_CIFRA_MAIN_OPTIONS_OPTIONS
            {0, 0, 0, 0}};
        longopts = optstruct;
        return chars;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual const char* arguments(const char**& args) {
        static const char* _args = CIFRA_CONSOLE_CIFRA_MAIN_ARGS;
        static const char* _argv[3] = {
            CIFRA_CONSOLE_CIFRA_MAIN_ARGV
            0};
        args = _argv;
        return _args;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
}; /// class _EXPORT_CLASS main_opt

} /// namespace cifra
} /// namespace console
} /// namespace app
} /// namespace cifra

#endif /// ndef _CIFRA_APP_CONSOLE_CIFRA_MAIN_OPT_HPP

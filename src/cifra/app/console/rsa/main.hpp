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
///   File: main.hpp
///
/// Author: $author$
///   Date: 3/14/2018
///////////////////////////////////////////////////////////////////////
#ifndef _CIFRA_APP_CONSOLE_RSA_MAIN_HPP
#define _CIFRA_APP_CONSOLE_RSA_MAIN_HPP

#include "cifra/console/mp/main.hpp"
#include "cifra/app/console/rsa/public.hpp"
#include "cifra/app/console/rsa/private.hpp"
#include "cifra/crypto/rsa/bn/public_key.hpp"
#include "cifra/crypto/rsa/bn/private_key.hpp"
#include "cifra/crypto/rsa/mp/public_key.hpp"
#include "cifra/crypto/rsa/mp/private_key.hpp"
#include "cifra/crypto/rsa/mb/public_key.hpp"
#include "cifra/crypto/rsa/mb/private_key.hpp"

namespace cifra {
namespace app {
namespace console {
namespace rsa {

///
/// modbytes min/max
///
enum {
    modbytes_min = 512/8,
    modbytes_max = 4096/8
};

///
/// plain/cipher/decipher
///
byte_t plain[modbytes_max], 
       cipher[modbytes_max], 
       decipher[modbytes_max];

typedef cifra::console::mp::main::Implements main_implements;
typedef cifra::console::mp::main main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements implements;
    typedef main_extends extends;
    typedef main derives;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main() {
    }
    virtual ~main() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    int (derives::*run_)(int argc, char** argv, char** env);
    virtual int run(int argc, char** argv, char** env) {
        int err = 0;
        time_t t = 0;

        ::time(&t);
        ::srand(t);
        //::srand(1521641298);
        //::srand(1521461722);
        //::srand(1984);

        LOG_DEBUG("try {...");
        try {
            this->outf("time = %u\n", t);
            if ((run_)) {
                err = (this->*run_)(argc, argv, env);
            } else {
                err = run_default(argc, argv, env);
            }
            LOG_DEBUG("...} try");
        } catch (...) {
            LOG_DEBUG("...catch (...)");
        }
        return err;
    }
    virtual int run_default(int argc, char** argv, char** env) {
        int err = 0;
        err = this->run_rsa_test_bn(argc, argv, env);
        return err;
    }
    virtual int run_unimplemented(int argc, char** argv, char** env) {
        int err = 1;
        LOG_ERROR("...unimplemented");
        err = this->usage(argc, argv, env);
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int run_rsa_test_bn(int argc, char** argv, char** env) {
        int err = 0;
        crypto::rsa::bn::public_key pub
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::exponent, sizeof(rsa::exponent));
        crypto::rsa::bn::private_key prv
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::d, sizeof(rsa::d), rsa::p, rsa::q, 
         rsa::dmp1, rsa::dmq1, rsa::iqmp, sizeof(rsa::p));
        err = this->run_rsa_test(pub, prv, argc, argv, env);
        return err;
    }
    virtual int run_rsa_test_mp(int argc, char** argv, char** env) {
        int err = 0;
        crypto::rsa::mp::public_key pub
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::exponent, sizeof(rsa::exponent));
        crypto::rsa::mp::private_key prv
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::d, sizeof(rsa::d), rsa::p, rsa::q, 
         rsa::dmp1, rsa::dmq1, rsa::iqmp, sizeof(rsa::p));
        err = this->run_rsa_test(pub, prv, argc, argv, env);
        return err;
    }
    virtual int run_rsa_test_mb(int argc, char** argv, char** env) {
        int err = 0;
        crypto::rsa::mb::public_key pub
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::exponent, sizeof(rsa::exponent));
        crypto::rsa::mb::private_key prv
        (rsa::modulus, sizeof(rsa::modulus),
         rsa::d, sizeof(rsa::d), rsa::p, rsa::q, 
         rsa::dmp1, rsa::dmq1, rsa::iqmp, sizeof(rsa::p));
        err = this->run_rsa_test(pub, prv, argc, argv, env);
        return err;
    }
    virtual int run_rsa_test_null(int argc, char** argv, char** env) {
        int err = 0;
        err = this->run_unimplemented(argc, argv, env);
        return err;
    }
    /*
    typedef crypto::rsa::bn::public_key pub_t;
    typedef crypto::rsa::bn::private_key prv_t;
    */
    template <class pub_t, class prv_t>
    int run_rsa_test
    (pub_t& pub, prv_t& prv ,int argc, char** argv, char** env) {
        int err = 0;
        ssize_t modbytes = pub.modsize();
        ssize_t size = 0;

        if ((modbytes >= modbytes_min) && (modbytes <= modbytes_max)) {
            
            if ((size = this->random(plain, modbytes))) {
                plain[0] = 0;
                this->out("plain = ");
                this->outx(plain, modbytes);
                this->outln();
                this->outln();

                if (modbytes == (size = pub(cipher, sizeof(cipher), plain, modbytes))) {
                    this->out("cipher = ");
                    this->outx(cipher, size);
                    this->outln();
                    this->outln();

                    if (modbytes == (size = prv(decipher, sizeof(decipher), cipher, size))) {
                        this->out("decipher = ");
                        this->outx(decipher, size);
                        this->outln();
                        this->outln();
                        
                        this->out("pub --> prv ");

                        if (!(::memcmp(plain, decipher, size))) {
                            this->outln("success");
                        } else {
                            this->outln("failure");
                        }
                        this->outln();
                    }
                }
                if (modbytes == (size = prv(cipher, sizeof(cipher), plain, modbytes))) {
                    this->out("cipher = ");
                    this->outx(cipher, size);
                    this->outln();
                    this->outln();
                    
                    if (modbytes == (size = pub(decipher, sizeof(decipher), cipher, size))) {
                        this->out("decipher = ");
                        this->outx(decipher, size);
                        this->outln();
                        this->outln();
                        
                        this->out("prv --> pub ");

                        if (!(::memcmp(plain, decipher, size))) {
                            this->outln("success");
                        } else {
                            this->outln("failure");
                        }
                        this->outln();
                    }
                }
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int on_mp_bn_integer_option
    (int optval, const char_t* optarg,
     const char_t* optname, int optind,
     int argc, char_t**argv, char_t**env) {
        int err = 0;
        this->run_ = &derives::run_rsa_test_bn;
        return err;
    }
    virtual int on_mp_mp_integer_option
    (int optval, const char_t* optarg,
     const char_t* optname, int optind,
     int argc, char_t**argv, char_t**env) {
        int err = 0;
        this->run_ = &derives::run_rsa_test_mp;
        return err;
    }
    virtual int on_mp_mb_integer_option
    (int optval, const char_t* optarg,
     const char_t* optname, int optind,
     int argc, char_t**argv, char_t**env) {
        int err = 0;
        this->run_ = &derives::run_rsa_test_mb;
        return err;
    }
    virtual int on_mp_null_integer_option
    (int optval, const char_t* optarg,
     const char_t* optname, int optind,
     int argc, char_t**argv, char_t**env) {
        int err = 0;
        this->run_ = &derives::run_rsa_test_null;
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};

} // namespace rsa 
} // namespace console 
} // namespace app 
} // namespace cifra 

#endif // _CIFRA_APP_CONSOLE_RSA_MAIN_HPP 

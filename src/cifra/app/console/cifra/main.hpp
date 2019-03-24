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
///   File: main.hpp
///
/// Author: $author$
///   Date: 3/17/2019
///////////////////////////////////////////////////////////////////////
#ifndef _CIFRA_APP_CONSOLE_CIFRA_MAIN_HPP
#define _CIFRA_APP_CONSOLE_CIFRA_MAIN_HPP

#include "cifra/app/console/cifra/main_opt.hpp"
#include "cifra/crypto/hash/openssl/hashes.hpp"

namespace cifra {
namespace crypto {
namespace hash {
namespace implementation = openssl;
} // namespace hash
} // namespace crypto
} // namespace cifra

namespace cifra {
namespace app {
namespace console {
namespace cifra {

typedef ::cifra::app::console::cifra::main_opt::Implements main_implements;
typedef ::cifra::app::console::cifra::main_opt main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;
    typedef main Derives;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main()
    : run_(0), 
      hash_finalize_(0),
      hash_(0),
      md5_implementation_(0),
      sha1_implementation_(0),
      sha256_implementation_(0),
      sha512_implementation_(0),
      hash_algorithm_(hash_algorithm_none),
      block_size_(64*1024) {
    }
    virtual ~main() {
    }
private:
    main(const main& copy) {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    enum hash_algorithm_t {
        hash_algorithm_none,
        hash_algorithm_sha512,
        hash_algorithm_sha256,
        hash_algorithm_sha1,
        hash_algorithm_md5,
        next_hash_algorithm,
        first_hash_algorithm = (hash_algorithm_none + 1),
        last_hash_algorithm = (next_hash_algorithm - 1)
    };
    typedef crypto::hash::base hash_t;
    typedef crypto::hash::implementation::md5 md5_t;
    typedef crypto::hash::implementation::sha1 sha1_t;
    typedef crypto::hash::implementation::sha256 sha256_t;
    typedef crypto::hash::implementation::sha512 sha512_t;
    typedef io::read::file source_file_t;

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    int (Derives::*run_)(int argc, char_t** argv, char_t** env);
    virtual int run(int argc, char_t **argv, char_t **env) {
        int err = 0;
        if ((run_)) {
            err = (this->*run_)(argc, argv, env);
        } else {
            err = this->default_run(argc, argv, env);
        }
        return err;
    }
    virtual int default_run(int argc, char_t **argv, char_t **env) {
        int err = 0;
        if (!(err = this->version_run(argc, argv, env))) {
            err = this->usage(argc, argv, env);
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int hash_run(int argc, char_t **argv, char_t **env) {
        int err = 0;
        hash_t& hash = this->hash();

        if ((argc > optind) && (argv[optind]) && (argv[optind][0])) {
            const string_t source(argv[optind]);
            err = this->hash_source(hash, source);
        } else {
            const char_t* chars = 0;
            size_t length = 0;

            if ((chars = plain_text(length))) {
                LOG_DEBUG("...\"" << chars << "\" = plain_text(length = " << length << ")");
                err = this->hash_chars(hash, chars, length);
            } else {
                err = this->hash_chars(hash, 0,0);
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int hash_source(hash_t& hash, const string_t& source) {
        int err = 1;
        err = this->hash_file(hash, source);
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int hash_file(hash_t& hash, const string_t& source) {
        int err = 1;
        const char_t* chars = 0;
        size_t length = 0;
        
        if ((chars = source.has_chars(length))) {
            source_file_t source_file;

            LOG_DEBUG("source_file.open(chars = \"" << chars << "\", source_file.mode_read_binary())...");
            if ((source_file.open(chars, source_file.mode_read_binary()))) {
                LOG_DEBUG("...source_file.open(chars = \"" << chars << "\", source_file.mode_read_binary())");

                err = this->hash_file(hash, source_file);

                LOG_DEBUG("source_file.close() \"" << chars << "\"...");
                if ((source_file.close())) {
                    LOG_DEBUG("...source_file.close() \"" << chars << "\"");
                } else {
                    LOG_ERROR("...failed on source_file.close() \"" << chars << "\"");
                }
            } else {
                LOG_ERROR("...failed on source_file.open(chars = \"" << chars << "\", source_file.mode_read_binary())");
            }
        }
        return err;
    }
    virtual int hash_file(hash_t& hash, source_file_t& source) {
        int err = 1;
        ssize_t blocksize = 0;

        if ((0 < (blocksize = this->block_size()))) {

            if ((blocksize <= (this->block().set_length(blocksize)))) {
                byte_t *block = 0;
                
                if ((block = this->block().elements())) {
                    
                    err = this->hash_file(hash, block, blocksize, source);
                }
            }
        }
        return err;
    }
    virtual int hash_file
    (hash_t& hash, byte_t* block, size_t blocksize, source_file_t& source) {
        int err = 1;
        ssize_t hashsize = 0;
        size_t blockcount = 0;
        time_t t1 = 0, t2 = 0, t = 1;

        if ((0 < (hashsize = hash.hashsize())) && (0 <= (hash.initialize()))) {
            err = 0;

            ::time(&t1);
            for (ssize_t count = 0, amount = 0; 0 <= amount; count += amount, ++blockcount) {

                if (0 < (amount = source.read(block, blocksize))) {
                    if (amount != (hash.hash(block, amount))) {
                        err = 1;
                    } else {
                        ::time(&t2);
                        if ((t2 - t1) >= t) {
                            t1 = t2;
                            LOG_DEBUG("..." << (blockcount+1) << " blocks read");
                        }
                        continue;
                    }
                } else {
                    if (0 > (amount)) {
                        err = 1;
                    }
                }
                if (!(err)) {
                    err = this->hash_finalize(hash, hashsize, block, blocksize);
                }
                break;
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int hash_chars(hash_t& hash, const char_t* source, size_t length) {
        int err = 1;
        ssize_t hashsize = 0;

        if ((0 < (hashsize = hash.hashsize()))) {

            if ((hashsize <= (this->block().set_length(hashsize)))) {
                byte_t *block = 0;
                
                if ((block = this->block().elements())) {
                    
                    err = this->hash_chars
                    (hash, hashsize, block, hashsize, source, length);
                }
            }
        }
        return err;
    }
    virtual int hash_chars
    (hash_t& hash, size_t hashsize, 
     byte_t* block, size_t blocksize, const char_t* source, size_t length) {
        int err = 1;

        if ((block) && (blocksize)) {

            if ((0 <= (hash.initialize()))) {
                ssize_t count = 0;
    
                if ((source) && (length)) {
                    LOG_DEBUG("hash.hash(source = \"" << string_t(source, length) << "\", length = " << length << ")...");
                    if (length != (hash.hash(source, length))) {
                        return err = 1;
                    }
                }
                err = this->hash_finalize(hash, hashsize, block, blocksize);
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    int (Derives::*hash_finalize_)
    (hash_t& hash, ssize_t hashsize, byte_t* block, size_t blocksize);
    virtual int hash_finalize
    (hash_t& hash, ssize_t hashsize, byte_t* block, size_t blocksize) {
        int err = 0;
        if ((this->hash_finalize_)) {
            err = (this->*hash_finalize_)(hash, hashsize, block, blocksize);
        } else {
            err = this->default_hash_finalize(hash, hashsize, block, blocksize);            
        }
        return err;
    }
    virtual int default_hash_finalize
    (hash_t& hash, ssize_t hashsize, byte_t* block, size_t blocksize) {
        int err = 0;
        err = this->simple_hash_finalize(hash, hashsize, block, blocksize);        
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int simple_hash_finalize
    (hash_t& hash, ssize_t hashsize, byte_t* block, size_t blocksize) {
        int err = 1;

        if (0 < (hashsize)) {
            ssize_t count = 0;

            LOG_DEBUG("hash.finalize(block = " << x_to_string(block, hashsize) << "..., blocksize = " << blocksize << ")...");
            if (hashsize == (count = hash.finalize(block, blocksize))) {
                LOG_DEBUG("..." << count << " = hash.finalize(block = " << x_to_string(block, hashsize) << ", hashsize = " << hashsize << ")");
                this->output_hash(block, count);
                err = 0;
            }
        }
        return err;
    }
    virtual int merkel_hash_finalize
    (hash_t& hash, ssize_t hashsize, byte_t* block, size_t blocksize) {
        int err = 1;

        if (0 < (hashsize)) {
            ssize_t count = 0;

            LOG_DEBUG("hash.finalize(block = " << x_to_string(block, hashsize) << "..., blocksize = " << blocksize << ")...");
            if (hashsize == (count = hash.finalize(block, blocksize))) {
                LOG_DEBUG("..." << count << " = hash.finalize(block = " << x_to_string(block, hashsize) << ", hashsize = " << hashsize << ")");

                if ((0 <= (hash.initialize()))) {

                    LOG_DEBUG("hash.hash(block = \"" << x_to_string(block, count) << "\", count = " << count << ")...");
                    if (count == (hash.hash(block, count))) {
    
                        if (hashsize == (count = hash.finalize(block, hashsize))) {
                            LOG_DEBUG("..." << count << " = hash.finalize(block = " << x_to_string(block, hashsize) << ", hashsize = " << hashsize << ")");
                            this->output_hash(block, count);
                            err = 0;
                        }
                    }
                }
            }
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual ssize_t output_hash(const void* block, size_t length) {
        if ((block) && (length)) {
            return this->outxln(block, length);
        }
        return 0;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    hash_t& (Derives::*hash_)();
    virtual hash_t& hash() {
        if ((this->hash_)) {
            return (this->*hash_)();
        } else {
            return this->default_hash();
        }
    }
    virtual hash_t& default_hash() {
        return this->sha1();
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    hash_t& (Derives::*md5_implementation_)();
    virtual hash_t& md5() {
        if ((this->md5_implementation_)) {
            return (this->*md5_implementation_)();
        }
        return this->md5_;
    }
    hash_t& (Derives::*sha1_implementation_)();
    virtual hash_t& sha1() {
        if ((this->sha1_implementation_)) {
            return (this->*sha1_implementation_)();
        }
        return this->sha1_;
    }
    hash_t& (Derives::*sha256_implementation_)();
    virtual hash_t& sha256() {
        if ((this->sha256_implementation_)) {
            return (this->*sha256_implementation_)();
        }
        return this->sha256_;
    }
    hash_t& (Derives::*sha512_implementation_)();
    virtual hash_t& sha512() {
        if ((this->sha512_implementation_)) {
            return (this->*sha512_implementation_)();
        }
        return this->sha512_;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual hash_algorithm_t set_hash_algorithm(hash_algorithm_t to) {
        this->hash_finalize_ = 0;
        switch (this->hash_algorithm_ = to) {
        case hash_algorithm_md5:
            this->hash_ = &Derives::md5;
            this->run_ = &Derives::hash_run;
            break;
        case hash_algorithm_sha1:
            this->hash_ = &Derives::sha1;
            this->run_ = &Derives::hash_run;
            break;
        case hash_algorithm_sha256:
            this->hash_ = &Derives::sha256;
            this->run_ = &Derives::hash_run;
            break;
        case hash_algorithm_sha512:
            this->hash_ = &Derives::sha512;
            this->run_ = &Derives::hash_run;
            break;
        default:
            this->hash_ = 0;
            this->run_ = 0;
            break;
        }
        return this->hash_algorithm_;
    }
    virtual hash_algorithm_t hash_algorithm() const {
        return this->hash_algorithm_;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void set_merkel_hash() {
        this->hash_finalize_ = &Derives::merkel_hash_finalize;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* set_plain_text(const char_t* to) {
        this->plain_text_.assign(to);
        return this->plain_text_.has_chars();
    }
    virtual const char_t* plain_text(size_t& length) const {
        return this->plain_text_.has_chars(length);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual byte_array_t& block() const {
        return (byte_array_t&)this->block_;
    }
    virtual size_t block_size() const {
        return this->block_size_;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual int on_hash_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        if ((optarg) && (optarg[0])) {
            if ((!(optarg[1]) && (CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_C[0] == (optarg[0])))
                || !(chars_t::compare(optarg, CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_MD5_S))) {
                this->set_hash_algorithm(hash_algorithm_md5);
            } else {
                if ((!(optarg[1]) && (CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_C[0] == (optarg[0])))
                    || !(chars_t::compare(optarg, CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA1_S))) {
                    this->set_hash_algorithm(hash_algorithm_sha1);
                } else {
                    if ((!(optarg[1]) && (CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_C[0] == (optarg[0])))
                        || !(chars_t::compare(optarg, CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA256_S))) {
                        this->set_hash_algorithm(hash_algorithm_sha256);
                    } else {
                        if ((!(optarg[1]) && (CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_C[0] == (optarg[0])))
                            || !(chars_t::compare(optarg, CIFRA_CONSOLE_CIFRA_MAIN_HASH_OPTARG_SHA512_S))) {
                            this->set_hash_algorithm(hash_algorithm_sha512);
                        } else {
                            err = on_invalid_option_arg
                            (optval, optarg, optname, optind, argc, argv, env);
                        }
                    }
                }
            }
        }
        return err;
    }
    virtual int on_merkel_hash_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        if (!(err = this->on_hash_option
              (optval, optarg, optname, optind, argc, argv, env))) {
             set_merkel_hash();
        }
        return err;
    }
    virtual int on_plain_text_option
    (int optval, const char* optarg,
     const char* optname, int optind,
     int argc, char**argv, char**env) {
        int err = 0;
        if ((optarg) && (optarg[0])) {
            this->set_plain_text(optarg);
        }
        return err;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    hash_algorithm_t hash_algorithm_;
    size_t block_size_;
    md5_t md5_;
    sha1_t sha1_;
    sha256_t sha256_;
    sha512_t sha512_;
    string_t plain_text_;
    byte_array_t block_;
}; /// class _EXPORT_CLASS main

} /// namespace cifra
} /// namespace console
} /// namespace app
} /// namespace cifra

#endif /// ndef _CIFRA_APP_CONSOLE_CIFRA_MAIN_HPP

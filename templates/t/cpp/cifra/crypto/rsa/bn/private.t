%########################################################################
%# Copyright (c) 1988-2018 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: private.t
%#
%# Author: $author$
%#   Date: 3/15/2018
%########################################################################
%with(%
%p,%(%else-then(%p%,%(d;p;q;dmp1;dmq1;iqmp)%)%)%,%
%%(%
%%parse(%p%,;,,,,%(%
%///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
virtual ssize_t set_%p%_msb(const byte_t* to, size_t tosize) {
    return 0;
}
virtual ssize_t get_%p%_msb(byte_t* to, size_t tosize) const {
    return 0;
}
)%,p)%%
%
%
%%parse(%p%,;,,,,%(%
%///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
virtual ssize_t set_%p%size(size_t to) {
    return 0;
}
virtual ssize_t %p%size() const {
    return 0;
}
)%,p)%%
%
%
%%parse(%p%,;,,,,%(%
%///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
virtual ssize_t set_%p%size(size_t to) {
    %p%_ = to;
    return %p%_;
}
virtual ssize_t %p%size() const {
    return %p%_;
}
)%,p)%%
%
%
%%parse(%p%,;,,,,%(%
%///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
virtual ssize_t set_%p%_msb(const byte_t* to, size_t tosize) {
    BIGNUM* %p% = 0;
    if ((%p% = this->%p%()) && (to) && (tosize)) {
        LOG_DEBUG("::BN_set_msb(%p%, to = " << x_to_string(to, tosize) << ", tosize = " << tosize << ")...");
        ::BN_set_msb(%p%, to, tosize);
        this->set_%p%size(tosize);
        return tosize;
    }
    return 0;
}
virtual ssize_t get_%p%_msb(byte_t* to, size_t tosize) const {
    BIGNUM* %p% = 0;
    size_t size = 0;
    if ((%p% = this->%p%()) && (size = this->%p%size()) && (to) && (tosize <= size)) {
        ::BN_get_msb(%p%, to, size);
        LOG_DEBUG("...::BN_get_msb(%p%, to = " << x_to_string(to, size) << ", size = " << size << ")");
        return size;
    }
    return 0;
}
)%,p)%%
%
%
%%parse(%p%,;,,,,%(%
%virtual BIGNUM* %p%size() const {
    return (BIGNUM*) %p%_;
}
)%,p)%%
%
%)%)%
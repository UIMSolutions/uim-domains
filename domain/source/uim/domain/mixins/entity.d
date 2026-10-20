module uim.domain.mixins.entity;

import uim.domain;

mixin template EntityData()
{
    @ReadOnly long createdAt;   // Unix-Zeit, später SysTime
    @ReadOnly string createdBy;
    @ReadOnly long changedAt;
    @ReadOnly string changedBy;
}
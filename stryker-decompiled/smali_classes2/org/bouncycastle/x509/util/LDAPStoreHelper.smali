.class public Lorg/bouncycastle/x509/util/LDAPStoreHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LDAP_PROVIDER:Ljava/lang/String; = "com.sun.jndi.ldap.LdapCtxFactory"

.field private static REFERRALS_IGNORE:Ljava/lang/String; = "ignore"

.field private static final SEARCH_SECURITY_LEVEL:Ljava/lang/String; = "none"

.field private static final URL_CONTEXT_PREFIX:Ljava/lang/String; = "com.sun.jndi.url"

.field private static cacheSize:I = 0x20

.field private static lifeTime:J = 0xea60L


# instance fields
.field private cacheMap:Ljava/util/Map;

.field private params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget v1, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    return-void
.end method

.method private declared-synchronized addToCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    :goto_0
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    sget v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    if-lt p2, v2, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/sql/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-wide v2, v5

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v2, v3

    .line 63
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v2}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v4}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_3
    const/4 v4, 0x0

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    aget-object v2, v2, v4

    .line 114
    .line 115
    instance-of v3, v2, Ljavax/security/auth/x500/X500Principal;

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 120
    .line 121
    const-string v3, "RFC1779"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_6
    const-string p1, "*"

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    :goto_2
    array-length v2, p4

    .line 154
    if-ge v4, v2, :cond_7

    .line 155
    .line 156
    aget-object v2, p4, v4

    .line 157
    .line 158
    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {p1, v2, p1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {p0, p3, v2, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    if-lez p4, :cond_8

    .line 181
    .line 182
    iget-object p4, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 183
    .line 184
    invoke-virtual {p4}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p4

    .line 188
    if-eqz p4, :cond_8

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_8

    .line 199
    .line 200
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/String;

    .line 205
    .line 206
    iget-object v4, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 207
    .line 208
    invoke-virtual {v4}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-direct {p0, v4}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-direct {p0, v4, v2, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_8
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 225
    .line 226
    .line 227
    move-result p4

    .line 228
    if-nez p4, :cond_9

    .line 229
    .line 230
    if-nez v3, :cond_9

    .line 231
    .line 232
    invoke-direct {p0, p3, p1, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .line 238
    .line 239
    :cond_9
    return-object v0
.end method

.method private cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move v2, v3

    .line 61
    :goto_0
    array-length v4, p1

    .line 62
    if-ge v2, v4, :cond_3

    .line 63
    .line 64
    aget-object v4, p1, v2

    .line 65
    .line 66
    instance-of v5, v4, Ljavax/security/auth/x500/X500Principal;

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/4 v1, 0x0

    .line 81
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const-string v4, "*"

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    .line 94
    .line 95
    const-string v2, "RFC1779"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move v2, v3

    .line 102
    :goto_1
    array-length v5, p4

    .line 103
    if-ge v2, v5, :cond_4

    .line 104
    .line 105
    aget-object v5, p4, v2

    .line 106
    .line 107
    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v4, v5, v4}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {p0, p3, v5, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    if-nez v1, :cond_6

    .line 126
    .line 127
    invoke-direct {p0, p3, v4, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    :cond_6
    return-object v0
.end method

.method private certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "RFC1779"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_1
    const-string p1, "*"

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_1
    array-length v4, p4

    .line 64
    if-ge v3, v4, :cond_2

    .line 65
    .line 66
    aget-object v4, p4, v3

    .line 67
    .line 68
    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {p1, v4, p1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {p0, p3, v4, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object p4, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 89
    .line 90
    invoke-virtual {p4}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    if-eqz p4, :cond_3

    .line 95
    .line 96
    iget-object p4, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 97
    .line 98
    invoke-virtual {p4}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    invoke-direct {p0, p4}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    invoke-direct {p0, p4, v2, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    if-nez v2, :cond_4

    .line 114
    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    invoke-direct {p0, p3, p1, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    :cond_4
    return-object v0
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "java.naming.factory.initial"

    sget-object v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.batchsize"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.naming.provider.url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.factory.url.pkgs"

    const-string v2, "com.sun.jndi.url"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.referral"

    sget-object v2, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "java.naming.security.authentication"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v1, v0}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    return-object v1
.end method

.method private createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/jce/provider/X509AttrCertParser;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;-><init>()V

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLParser;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/X509CRLParser;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jce/provider/X509CRLParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CRLParser;->engineRead()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineRead()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CertPairParser;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/X509CertPairParser;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->engineInit(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Lorg/bouncycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lorg/bouncycastle/x509/X509CertificatePair;

    new-instance v6, Lorg/bouncycastle/asn1/x509/CertificatePair;

    new-instance v7, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    new-instance v7, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Lorg/bouncycastle/asn1/x509/CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/x509/X509CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/CertificatePair;)V

    move v1, v3

    move-object v2, v5

    :goto_1
    invoke-virtual {p2, v2}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "RFC1779"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_1
    const-string p1, "*"

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_1
    array-length v3, p4

    .line 62
    if-ge v2, v3, :cond_2

    .line 63
    .line 64
    aget-object v3, p4, v2

    .line 65
    .line 66
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {p1, v3, p1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {p0, p3, v3, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-nez v1, :cond_3

    .line 85
    .line 86
    invoke-direct {p0, p3, p1, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    return-object v0
.end method

.method private getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    return-object p1
.end method

.method private getFromCache(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v5, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    sub-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    return-object v2
.end method

.method private getSubjectAsString(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 10
    .line 11
    .line 12
    const-string p1, "RFC1779"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :goto_0
    new-instance v0, Lorg/bouncycastle/util/StoreException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "exception processing name: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/util/StoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, -0x1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    add-int/2addr p2, v0

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 p2, 0x2c

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/16 v3, 0x5c

    .line 64
    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ne v0, v1, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v0, 0x3d

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    add-int/2addr v0, v1

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/16 v2, 0x20

    .line 98
    .line 99
    if-ne v0, v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    const-string v0, "\""

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-static {p1, v1, p2}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :cond_5
    return-object p1
.end method

.method private search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "(|"

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, ""

    .line 8
    .line 9
    const-string v5, ")"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    move-object p1, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string v6, "**"

    .line 16
    .line 17
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    const-string p2, "*"

    .line 24
    .line 25
    :cond_1
    move v6, v2

    .line 26
    move-object v7, v4

    .line 27
    :goto_0
    array-length v8, p1

    .line 28
    if-ge v6, v8, :cond_2

    .line 29
    .line 30
    invoke-static {v7, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    aget-object v8, p1, v6

    .line 35
    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v8, "="

    .line 40
    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0, v7, v5}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    move-object p2, v4

    .line 62
    :goto_2
    array-length v6, p3

    .line 63
    if-ge v2, v6, :cond_3

    .line 64
    .line 65
    invoke-static {p2, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    aget-object v6, p3, v2

    .line 70
    .line 71
    const-string v7, "=*)"

    .line 72
    .line 73
    invoke-static {p2, v6, v7}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-static {v0, p2, v5}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "(&"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move-object p2, v0

    .line 111
    :goto_3
    invoke-direct {p0, p2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->getFromCache(Ljava/lang/String;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->connectLDAP()Ljavax/naming/directory/DirContext;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    new-instance v0, Ljavax/naming/directory/SearchControls;

    .line 128
    .line 129
    invoke-direct {v0}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 130
    .line 131
    .line 132
    const/4 v1, 0x2

    .line 133
    invoke-virtual {v0, v1}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 134
    .line 135
    .line 136
    const-wide/16 v1, 0x0

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p3}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p3, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    .line 145
    .line 146
    invoke-virtual {p3}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-interface {v3, p3, p2, v0}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    :cond_6
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    invoke-interface {p3}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljavax/naming/directory/SearchResult;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ljavax/naming/directory/Attribute;

    .line 179
    .line 180
    invoke-interface {v0}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :goto_4
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_6

    .line 189
    .line 190
    invoke-interface {v0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catchall_0
    move-exception p1

    .line 199
    goto :goto_6

    .line 200
    :cond_7
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->addToCache(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    :goto_5
    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :goto_6
    if-eqz v3, :cond_8

    .line 208
    .line 209
    :try_start_2
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    .line 211
    .line 212
    :catch_0
    :cond_8
    throw p1

    .line 213
    :catch_1
    if-eqz v3, :cond_9

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catch_2
    :cond_9
    :goto_7
    return-object p1
.end method

.method private splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAACertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAACertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAACertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeAuthorityRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeCertificateAttributes(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAttributeDescriptorCertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getAuthorityRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCACertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getCrossCertificatePairs(Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    new-instance v5, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v5}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    invoke-direct {p0, v5, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/bouncycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/bouncycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getDeltaCertificateRevocationLists(Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapDeltaRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/bouncycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/bouncycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

.method public getUserCertificates(Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->params:Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-direct {p0, v4, v0, v1, v2}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/bouncycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/bouncycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v3
.end method

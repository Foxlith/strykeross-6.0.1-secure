.class public final Landroidx/security/crypto/EncryptedSharedPreferences;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;,
        Landroidx/security/crypto/EncryptedSharedPreferences$Editor;,
        Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;,
        Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
    }
.end annotation


# static fields
.field private static final KEY_KEYSET_ALIAS:Ljava/lang/String; = "__androidx_security_crypto_encrypted_prefs_key_keyset__"

.field private static final NULL_VALUE:Ljava/lang/String; = "__NULL__"

.field private static final VALUE_KEYSET_ALIAS:Ljava/lang/String; = "__androidx_security_crypto_encrypted_prefs_value_keyset__"


# instance fields
.field final mFileName:Ljava/lang/String;

.field final mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mMasterKeyAlias:Ljava/lang/String;

.field final mSharedPreferences:Landroid/content/SharedPreferences;

.field final mValueAead:Lcom/google/crypto/tink/Aead;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/DeterministicAead;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mMasterKeyAlias:Ljava/lang/String;

    iput-object p4, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    iput-object p5, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;
    .locals 6

    invoke-static {}, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->register()V

    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    invoke-virtual {p3}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p3

    const-string v0, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    invoke-virtual {p3, p2, v0, p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-keystore://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p3

    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    invoke-virtual {p4}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p4

    const-string v0, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    invoke-virtual {p4, p2, v0, p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p4

    const-class v0, Lcom/google/crypto/tink/DeterministicAead;

    invoke-virtual {p3, v0}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/google/crypto/tink/DeterministicAead;

    const-class p3, Lcom/google/crypto/tink/Aead;

    invoke-virtual {p4, p3}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/google/crypto/tink/Aead;

    new-instance p3, Landroidx/security/crypto/EncryptedSharedPreferences;

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/security/crypto/EncryptedSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/DeterministicAead;)V

    return-object p3
.end method

.method private getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    const-string v0, "__NULL__"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    move-object p1, v0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v4, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    .line 31
    .line 32
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v4, v1, p1}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->fromId(I)Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$1;->$SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType:[I

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    aget v1, v4, v1

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    packed-switch v1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :pswitch_0
    new-instance v1, Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    add-int/2addr v7, v5

    .line 98
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v4, :cond_2

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move-object v2, v1

    .line 135
    goto :goto_1

    .line 136
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    move v3, v4

    .line 143
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto :goto_1

    .line 148
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_1

    .line 157
    :pswitch_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 158
    .line 159
    .line 160
    move-result-wide v0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_1

    .line 166
    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    goto :goto_1

    .line 175
    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    move-object v2, p1

    .line 202
    :cond_5
    :goto_1
    return-object v2

    .line 203
    :goto_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, "Could not decrypt value. "

    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 221
    .line 222
    const-string v1, " is a reserved key for the encryption keyset."

    .line 223
    .line 224
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string v1, " is a reserved key for the encryption keyset."

    .line 21
    .line 22
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public decryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "__NULL__"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :cond_0
    return-object v0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/SecurityException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Could not decrypt key. "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;-><init>(Landroidx/security/crypto/EncryptedSharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public encryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "__NULL__"

    .line 4
    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    .line 6
    .line 7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Base64;->encode([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Could not encrypt key. "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public encryptKeyValuePair(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Base64;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/security/crypto/EncryptedSharedPreferences;->decryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method public isReservedKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

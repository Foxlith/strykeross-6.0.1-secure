.class final Landroidx/security/crypto/EncryptedSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Editor"
.end annotation


# instance fields
.field private mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

.field private final mKeysChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/security/crypto/EncryptedSharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    iput-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    return-void
.end method

.method private clearKeysIfNeeded()V
    .locals 4

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v2, v1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-virtual {v3, v1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyListeners()V
    .locals 5

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    iget-object v0, v0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private putEncryptedObject(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "__NULL__"

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKeyValuePair(Ljava/lang/String;[B)Landroid/util/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/SecurityException;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Could not encrypt data: "

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p2, v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p2

    .line 56
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    .line 57
    .line 58
    const-string v0, " is a reserved key for the encryption keyset."

    .line 59
    .line 60
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p2
.end method


# virtual methods
.method public apply()V
    .locals 1

    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->clearKeysIfNeeded()V

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mClearRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public commit()Z
    .locals 2

    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->clearKeysIfNeeded()V

    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->notifyListeners()V

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    if-nez p2, :cond_0

    const-string p2, "__NULL__"

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v0, p2

    add-int/lit8 v1, v0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    const-string v0, "__NULL__"

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->putEncryptedObject(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mEncryptedSharedPreferences:Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;->mKeysChanged:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    const-string v1, " is a reserved key for the encryption keyset."

    .line 29
    .line 30
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

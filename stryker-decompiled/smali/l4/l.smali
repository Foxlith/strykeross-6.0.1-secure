.class public final Ll4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:[Ljava/lang/String;

.field public static volatile k:Ljava/util/ArrayList;

.field public static volatile l:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Process;

.field public final e:Ll4/m;

.field public final f:Lu3/g;

.field public g:Landroid/database/sqlite/SQLiteDatabase;

.field public h:Landroid/database/sqlite/SQLiteDatabase;

.field public volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "4.0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll4/l;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "touchMeAndGetPhoneReset"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Ll4/l;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Ll4/l;->i:Z

    .line 15
    .line 16
    iput-object p1, p0, Ll4/l;->c:Landroid/content/Context;

    .line 17
    .line 18
    :try_start_0
    sget-object v1, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 25
    .line 26
    sget-object v3, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 27
    .line 28
    invoke-static {v0, v1, p1, v2, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception v1

    .line 36
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :try_start_1
    sget-object v1, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 46
    .line 47
    sget-object v3, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 48
    .line 49
    invoke-static {v0, v1, p1, v2, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    goto :goto_2

    .line 54
    :catch_2
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :catch_3
    move-exception v0

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_2
    iput-object p1, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    new-instance p1, Lu3/g;

    .line 67
    .line 68
    invoke-direct {p1}, Lu3/g;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Ll4/l;->f:Lu3/g;

    .line 72
    .line 73
    new-instance v0, Ll4/m;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 79
    .line 80
    const-string v2, "wlan0"

    .line 81
    .line 82
    const-string v3, "ip link set $ifc down; echo \'4\' > /sys/module/wlan/parameters/con_mode; ip link set $ifc up"

    .line 83
    .line 84
    const-string v4, "ip link set $ifc down; echo \'0\' > /sys/module/wlan/parameters/con_mode; ip link set $ifc up"

    .line 85
    .line 86
    invoke-direct {v1, v2, v2, v3, v4}, Lcom/zalexdev/stryker/custom/UsbDev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Ll4/m;->d:Lcom/zalexdev/stryker/custom/UsbDev;

    .line 90
    .line 91
    new-instance v1, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 92
    .line 93
    const-string v2, "swlan0"

    .line 94
    .line 95
    const-string v4, "ip link set $ifc down; echo \'0\' > /sys/module/wlan/parameters/con_mode"

    .line 96
    .line 97
    invoke-direct {v1, v2, v2, v3, v4}, Lcom/zalexdev/stryker/custom/UsbDev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, v0, Ll4/m;->e:Lcom/zalexdev/stryker/custom/UsbDev;

    .line 101
    .line 102
    iput-object p0, v0, Ll4/m;->b:Ll4/l;

    .line 103
    .line 104
    iget-object v1, p0, Ll4/l;->c:Landroid/content/Context;

    .line 105
    .line 106
    iput-object v1, v0, Ll4/m;->a:Landroid/content/Context;

    .line 107
    .line 108
    iput-object p1, v0, Ll4/m;->c:Lu3/g;

    .line 109
    .line 110
    invoke-virtual {v0}, Ll4/m;->g()Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Ll4/l;->e:Ll4/m;

    .line 114
    .line 115
    return-void
.end method

.method public static J()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static U(Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__STRYKER_PKG_OK__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static Y(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public static Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "/data/local/stryker/release"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static m0(Landroid/view/View;Ljava/lang/Float;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static o0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\nprintf \'\\n__STRYKER_RC__%s\\n\' \"$?\"\n"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static p0(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/io/File;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ll4/l;->t(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static v(Landroid/content/Context;Z)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "busybox"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    cmp-long p1, v4, v1

    .line 22
    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    return v3

    .line 32
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "busybox.part"

    .line 39
    .line 40
    invoke-direct {p1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v5, "busybox64"

    .line 49
    .line 50
    invoke-virtual {p0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .line 55
    .line 56
    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    .line 59
    const/16 v6, 0x2000

    .line 60
    .line 61
    :try_start_2
    new-array v6, v6, [B

    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v8, -0x1

    .line 68
    if-eq v7, v8, :cond_1

    .line 69
    .line 70
    invoke-virtual {v5, v6, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v6

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    .line 81
    .line 82
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    cmp-long p0, v5, v1

    .line 90
    .line 91
    if-gtz p0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :cond_2
    :try_start_5
    invoke-virtual {p1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    return v4

    .line 113
    :cond_3
    :try_start_6
    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 114
    .line 115
    .line 116
    :catch_1
    return v3

    .line 117
    :catch_2
    move-exception p0

    .line 118
    goto :goto_5

    .line 119
    :catchall_1
    move-exception v5

    .line 120
    goto :goto_3

    .line 121
    :goto_1
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_2
    move-exception v5

    .line 126
    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 130
    :goto_3
    if-eqz p0, :cond_4

    .line 131
    .line 132
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catchall_3
    move-exception p0

    .line 137
    :try_start_a
    invoke-virtual {v5, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_4
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 141
    :goto_5
    const-string v5, "Core"

    .line 142
    .line 143
    const-string v6, "Failed to extract busybox64"

    .line 144
    .line 145
    invoke-static {v5, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 152
    .line 153
    .line 154
    move-result-wide p0

    .line 155
    cmp-long p0, p0, v1

    .line 156
    .line 157
    if-lez p0, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_5
    move v3, v4

    .line 167
    :goto_6
    return v3
.end method


# virtual methods
.method public final A()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exploits"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    new-instance v4, Lcom/zalexdev/stryker/custom/Exploit;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "title"

    .line 39
    .line 40
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "path"

    .line 48
    .line 49
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "pattern"

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setSuccesspatern(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "lang"

    .line 66
    .line 67
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setLang(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "args"

    .line 75
    .line 76
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setArgs(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "issys"

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v4, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setIssystem(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "EternalBlue"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const-string v4, "VUNLFOUNDED"

    .line 116
    .line 117
    const-string v5, " {IP}"

    .line 118
    .line 119
    const-string v6, "Python"

    .line 120
    .line 121
    if-nez v2, :cond_1

    .line 122
    .line 123
    new-instance v2, Lcom/zalexdev/stryker/custom/Exploit;

    .line 124
    .line 125
    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v3, "eternalscan.py"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v5}, Lcom/zalexdev/stryker/custom/Exploit;->setArgs(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setIssystem(Ljava/lang/Boolean;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Lcom/zalexdev/stryker/custom/Exploit;->setSuccesspatern(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v6}, Lcom/zalexdev/stryker/custom/Exploit;->setLang(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Ll4/l;->j0(Lcom/zalexdev/stryker/custom/Exploit;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "SMBGhost"

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    new-instance v2, Lcom/zalexdev/stryker/custom/Exploit;

    .line 166
    .line 167
    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, "ghostscanner.py"

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5}, Lcom/zalexdev/stryker/custom/Exploit;->setArgs(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setIssystem(Ljava/lang/Boolean;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v4}, Lcom/zalexdev/stryker/custom/Exploit;->setSuccesspatern(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v6}, Lcom/zalexdev/stryker/custom/Exploit;->setLang(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v2}, Ll4/l;->j0(Lcom/zalexdev/stryker/custom/Exploit;)V

    .line 193
    .line 194
    .line 195
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v3, "Bluekeep"

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_3

    .line 206
    .line 207
    new-instance v2, Lcom/zalexdev/stryker/custom/Exploit;

    .line 208
    .line 209
    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v3, "bluekeepscan.py"

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v5}, Lcom/zalexdev/stryker/custom/Exploit;->setArgs(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setIssystem(Ljava/lang/Boolean;)V

    .line 226
    .line 227
    .line 228
    const-string v3, "VULNERABLE"

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/custom/Exploit;->setSuccesspatern(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v6}, Lcom/zalexdev/stryker/custom/Exploit;->setLang(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v2}, Ll4/l;->j0(Lcom/zalexdev/stryker/custom/Exploit;)V

    .line 237
    .line 238
    .line 239
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const-string v2, "CVE-2022-27255"

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_4

    .line 250
    .line 251
    new-instance v1, Lcom/zalexdev/stryker/custom/Exploit;

    .line 252
    .line 253
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Exploit;->setTitle(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v2, "checker.py"

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Exploit;->setPath(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v2, " {IP} {PORT}"

    .line 265
    .line 266
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Exploit;->setArgs(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Exploit;->setIssystem(Ljava/lang/Boolean;)V

    .line 272
    .line 273
    .line 274
    const-string v2, "Target vulnerable"

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/custom/Exploit;->setSuccesspatern(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v6}, Lcom/zalexdev/stryker/custom/Exploit;->setLang(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v1}, Ll4/l;->j0(Lcom/zalexdev/stryker/custom/Exploit;)V

    .line 283
    .line 284
    .line 285
    :cond_4
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Ll4/l;->e:Ll4/m;

    .line 2
    .line 3
    iget-object v1, v0, Ll4/m;->b:Ll4/l;

    .line 4
    .line 5
    const-string v2, "wlan_scan"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, "mon"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x2

    .line 37
    const-string v5, "Scan interface is "

    .line 38
    .line 39
    iget-object v0, v0, Ll4/m;->c:Lu3/g;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v3, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v3, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-object v2
.end method

.method public final C()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ll4/l;->e:Ll4/m;

    invoke-virtual {v1}, Ll4/m;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "wlan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v2, "interfaces"

    invoke-virtual {p0, v1, v2}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0
.end method

.method public final D()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "last_network_scan"

    invoke-virtual {p0, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/zalexdev/stryker/custom/Device;

    invoke-direct {v3}, Lcom/zalexdev/stryker/custom/Device;-><init>()V

    invoke-virtual {v3, v2}, Lcom/zalexdev/stryker/custom/Device;->restoreFromJSON(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final E(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "/sdcard/Stryker"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ll4/l;->H()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0xf

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "Stryker"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ll4/l;->H()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    move-object v0, p1

    .line 100
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 101
    .line 102
    new-instance p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    array-length v1, v0

    .line 119
    const/4 v2, 0x0

    .line 120
    :goto_2
    if-ge v2, v1, :cond_4

    .line 121
    .line 122
    aget-object v3, v0, v2

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    return-object p1

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, "ls "

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method public final F(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u201a\u2017\u201a"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final G()Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "bssids"

    invoke-virtual {p0, v0}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final H()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ll4/l;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lu2/h;->v()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "Stryker"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final I()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sites"

    invoke-virtual {p0, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/zalexdev/stryker/custom/Site;->parseItem(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final K(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "select MacPrefix,VendorName from macvendor where MacPrefix LIKE \'%"

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Ll4/l;->g:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "/data/data/com.zalexdev.stryker/files/vendors.db"

    invoke-static {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Ll4/l;->g:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v2, p0, Ll4/l;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v6, 0x8

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' COLLATE NOCASE"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {v1}, Ll4/l;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs M([Ljava/lang/String;)Z
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v2, p1

    .line 12
    move v3, v1

    .line 13
    :goto_0
    if-ge v3, v2, :cond_5

    .line 14
    .line 15
    aget-object v4, p1, v3

    .line 16
    .line 17
    if-eqz v4, :cond_4

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_2

    .line 31
    .line 32
    const-string v5, " || "

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_2
    const-string v5, "[ -e "

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-static {v4}, Ll4/l;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    :goto_1
    invoke-static {v4}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " ]"

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    return v1

    .line 75
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "{ "

    .line 78
    .line 79
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "; } && echo __STRYKER_PKG_OK__ || echo __STRYKER_PKG_NO__"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_3

    .line 105
    :cond_7
    invoke-virtual {p0, p1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_3
    invoke-static {p1}, Ll4/l;->U(Ljava/util/ArrayList;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    return p1
.end method

.method public final N(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "rm -rf "

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "rm -rf"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, "\\s+"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    array-length v1, p1

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    if-ge v2, v1, :cond_3

    .line 48
    .line 49
    aget-object v3, p1, v2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    const/16 v4, 0x20

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Ll4/l;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final O(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "command -v "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " >/dev/null 2>&1 && echo __STRYKER_PKG_OK__ || echo __STRYKER_PKG_NO__"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ll4/l;->U(Ljava/util/ArrayList;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final P(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "dpkg-query -W -f=\'${Status}\' "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Li5/a;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " 2>/dev/null | grep -q \'ok installed\' && echo __STRYKER_PKG_OK__ || echo __STRYKER_PKG_NO__"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ll4/l;->U(Ljava/util/ArrayList;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final Q()Ljava/lang/Boolean;
    .locals 9

    .line 1
    const-string v0, "cat /proc/mounts"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/4 v7, 0x1

    .line 21
    if-eqz v6, :cond_5

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Ljava/lang/String;

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v8, " /data/local/stryker/release/proc "

    .line 33
    .line 34
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    move v2, v7

    .line 41
    :cond_2
    const-string v8, " /data/local/stryker/release/sys "

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    move v3, v7

    .line 50
    :cond_3
    const-string v8, " /data/local/stryker/release/dev "

    .line 51
    .line 52
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_4

    .line 57
    .line 58
    move v4, v7

    .line 59
    :cond_4
    const-string v8, " /data/local/stryker/release/sdcard/Stryker "

    .line 60
    .line 61
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    move v5, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_5
    if-eqz v2, :cond_6

    .line 70
    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    if-eqz v5, :cond_6

    .line 76
    .line 77
    move v1, v7

    .line 78
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public final R()Z
    .locals 3

    .line 1
    const-string v0, "pixie_iface_down"

    const/4 v1, 0x1

    iget-object v2, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final S()Z
    .locals 3

    .line 1
    const-string v0, "save_aps"

    const/4 v1, 0x1

    iget-object v2, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final T(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "searchsploit"

    const-string v2, "hydra"

    const-string v3, "cameradar"

    const-string v4, "nuclei"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "metasploit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v5

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    const-string p1, "msf"

    invoke-virtual {p0, p1}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "/opt/metasploit-framework/msfconsole"

    const-string v0, "/usr/local/bin/msfconsole"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "msfconsole"

    invoke-virtual {p0, p1}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :cond_6
    :goto_1
    return v5

    :pswitch_1
    const-string p1, "/opt/exploitdb/searchsploit"

    const-string v0, "/usr/local/bin/searchsploit"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    :cond_8
    :goto_2
    return v5

    :pswitch_2
    invoke-virtual {p0, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "/usr/bin/hydra"

    const-string v0, "/usr/local/bin/hydra"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v2}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v5, v6

    :cond_a
    :goto_3
    return v5

    :pswitch_3
    invoke-virtual {p0, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "/usr/bin/cameradar"

    const-string v0, "/usr/local/bin/cameradar"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v3}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    move v5, v6

    :cond_c
    :goto_4
    return v5

    :pswitch_4
    invoke-virtual {p0, v4}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "/usr/bin/nuclei"

    const-string v0, "/usr/local/bin/nuclei"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->M([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0, v4}, Ll4/l;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    move v5, v6

    :cond_e
    :goto_5
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3dab8aec -> :sswitch_4
        -0x14624db0 -> :sswitch_3
        0x5f212e2 -> :sswitch_2
        0x3d8be573 -> :sswitch_1
        0x6a241c10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final V()Z
    .locals 3

    .line 1
    const-string v0, "cat /proc/mounts"

    invoke-virtual {p0, v0}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final W(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, v3, v2}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    const-string v2, "cat /proc/mounts"

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "\\s+"

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    array-length v5, v4

    .line 63
    const/4 v6, 0x2

    .line 64
    if-ge v5, v6, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    aget-object v4, v4, v3

    .line 68
    .line 69
    const-string v5, "\\040"

    .line 70
    .line 71
    const-string v6, " "

    .line 72
    .line 73
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_5

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    return-object v0
.end method

.method public final X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_6

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    new-instance p2, Ljava/io/FileInputStream;

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x2000

    .line 50
    .line 51
    :try_start_2
    new-array p1, p1, [B

    .line 52
    .line 53
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, -0x1

    .line 58
    if-eq v2, v3, :cond_1

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_7

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    goto :goto_4

    .line 79
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_2
    move-exception v0

    .line 84
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    :goto_4
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :catchall_3
    move-exception p2

    .line 93
    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_5
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 97
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "Rootless move failed: "

    .line 100
    .line 101
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const/4 p2, 0x3

    .line 109
    iget-object v0, p0, Ll4/l;->f:Lu3/g;

    .line 110
    .line 111
    invoke-virtual {v0, p2, p1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_7
    return-void

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "mv "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " "

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 1
    const-string v0, "/data/data/com.zalexdev.stryker/files/busybox true >/dev/null 2>&1; echo BBEXIT=$?"

    invoke-virtual {p0, v0}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "BBEXIT=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    move-object/from16 v0, p4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v8

    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/lang/Thread;

    new-instance v9, Ll4/i;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v15

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ll4/i;-><init>(Ll4/l;Ljava/lang/Process;Ljava/util/ArrayList;ZLjava/lang/String;)V

    const-string v1, "stryker-su-stderr"

    invoke-direct {v14, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    new-array v2, v1, [J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    new-array v3, v1, [Z

    aput-boolean v5, v3, v5

    new-array v4, v1, [Z

    aput-boolean v5, v4, v5

    new-instance v6, Ljava/lang/Thread;

    new-instance v12, Ll4/j;

    move-object v9, v12

    move-object v10, v3

    move-object v11, v2

    move-object v5, v12

    move-wide/from16 v12, p6

    move-object/from16 v16, v14

    move-object v14, v4

    move-object/from16 v17, v15

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Ll4/j;-><init>([Z[JJ[ZLjava/lang/Process;)V

    const-string v9, "stryker-su-watchdog"

    invoke-direct {v6, v5, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-wide/16 v9, 0x0

    cmp-long v5, p6, v9

    if-lez v5, :cond_1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    if-nez p5, :cond_2

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :catch_0
    move-object/from16 v2, v16

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    goto/16 :goto_8

    :catch_1
    move-object/from16 v2, v16

    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_2
    :goto_1
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v15, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    const-string v15, "__STRYKER_RC__"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const/4 v15, 0x0

    aput-wide v18, v2, v15

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    move v9, v1

    goto :goto_2

    :cond_5
    const/4 v15, 0x2

    if-eqz v9, :cond_7

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    iget-object v9, v7, Ll4/l;->f:Lu3/g;

    const-string v11, ""

    invoke-virtual {v9, v15, v11, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v9, 0x0

    :cond_7
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_8

    iget-object v11, v7, Ll4/l;->f:Lu3/g;

    invoke-virtual {v11, v15, v10, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz p5, :cond_3

    const-string v11, "no interfaces assigned"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p3, :cond_9

    iget-object v10, v7, Ll4/l;->f:Lu3/g;

    const-string v11, "No interfaces assigned. Answering no"

    invoke-virtual {v10, v5, v11, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v10, "n\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_3
    if-eqz p5, :cond_b

    :try_start_1
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move v15, v2

    move-object/from16 v2, v16

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_b

    :catch_2
    move v15, v2

    move-object/from16 v2, v16

    goto :goto_9

    :catch_3
    :cond_b
    :goto_5
    if-nez v2, :cond_c

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    :catch_4
    move v9, v2

    move-object/from16 v2, v16

    goto/16 :goto_0

    :goto_6
    aput-boolean v1, v3, v9

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    if-eqz v2, :cond_d

    move-object/from16 v2, v16

    const-wide/16 v9, 0x12c

    goto :goto_7

    :cond_d
    move-object/from16 v2, v16

    const-wide/16 v9, 0x7d0

    :goto_7
    :try_start_3
    invoke-virtual {v2, v9, v10}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Process;->destroy()V

    const/4 v1, 0x0

    goto :goto_a

    :goto_8
    aput-boolean v1, v3, v10

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    if-eqz v9, :cond_e

    const-wide/16 v9, 0x12c

    goto :goto_7

    :cond_e
    const-wide/16 v9, 0x7d0

    goto :goto_7

    :goto_9
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v9, 0x0

    aput-boolean v1, v3, v9

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    if-eqz v15, :cond_f

    const-wide/16 v9, 0x12c

    goto :goto_7

    :cond_f
    const-wide/16 v9, 0x7d0

    goto :goto_7

    :goto_a
    aget-boolean v1, v4, v1

    if-eqz v1, :cond_10

    const-string v1, "command produced no output for 10 min and was killed"

    const-string v2, "[E] command produced no output for 10 min and was killed"

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Ll4/l;->f:Lu3/g;

    invoke-virtual {v2, v5, v1, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v4, v17

    monitor-enter v4

    :try_start_5
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4

    return-object v8

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    :goto_b
    aput-boolean v1, v3, v4

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    if-eqz v15, :cond_11

    const-wide/16 v9, 0x12c

    goto :goto_c

    :cond_11
    const-wide/16 v9, 0x7d0

    :goto_c
    :try_start_6
    invoke-virtual {v2, v9, v10}, Ljava/lang/Thread;->join(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Process;->destroy()V

    throw v0
.end method

.method public final b(ILcom/zalexdev/stryker/custom/Site;)V
    .locals 3

    .line 1
    const-string v0, "sites"

    invoke-virtual {p0, v0}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Site;->getJSON()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Checking file "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Ll4/l;->f:Lu3/g;

    .line 9
    .line 10
    invoke-virtual {v2, v1, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "[ -f "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " ] && echo true || echo false"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "true"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public final c0(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "Checking folder "

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ll4/l;->f:Lu3/g;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2, v0}, Lu3/g;->e(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "[ -d "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " ] && echo true || echo false"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "true"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v2, 0x0

    .line 78
    :goto_0
    return v2
.end method

.method public final d0(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "\u201a\u2017\u201a"

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ll4/l;->d:Ljava/lang/Process;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "exit\nexit\n"

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Ll4/l;->d:Ljava/lang/Process;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ll4/l;->d:Ljava/lang/Process;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "su"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ll4/l;->d:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_2
    const-string v0, "offed"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "/data/data/com.zalexdev.stryker/files/sqlite3 /data/adb/magisk.db \"SELECT notification FROM policies WHERE package_name=\'com.zalexdev.stryker\';\""

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "1"

    .line 66
    .line 67
    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "/data/data/com.zalexdev.stryker/files/sqlite3 /data/adb/magisk.db \"SELECT notification FROM policies WHERE uid=\'"

    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, "\';\""

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    :cond_1
    return v0

    .line 105
    :cond_2
    const/4 v0, 0x0

    .line 106
    return v0
.end method

.method public final e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ll4/l;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    sget-object v0, Ll4/l;->l:Ljava/util/HashSet;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    const-string v2, "pixie_verified.txt"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ll4/l;->f0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ll4/l;->l:Ljava/util/HashSet;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    sget-object v0, Ll4/l;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const-string v0, "routes.txt"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ll4/l;->f0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Ll4/l;->k:Ljava/util/ArrayList;

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    return v2

    .line 73
    :cond_5
    const-string v0, "routers"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_7

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v3}, Ll4/l;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    return v2

    .line 112
    :cond_7
    return v1
.end method

.method public final f0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Ll4/l;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ll4/l;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    :try_start_3
    iget-object v3, p0, Ll4/l;->f:Lu3/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v3, v1, p1}, Lu3/g;->e(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    throw p1
.end method

.method public final g(Landroidx/fragment/app/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll4/l;->c:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "uid=0"

    invoke-static {v0, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rfkill unblock all 2>/dev/null || for f in /sys/class/rfkill/*/state; do echo 1 > \"$f\" 2>/dev/null; done; pkill wpa_supplicant 2>/dev/null; for i in $(iw dev 2>/dev/null | awk \'/Interface/{print $2}\'); do case \"$i\" in *mon) [ \"$i\" = \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" ] || iw dev \"$i\" del 2>/dev/null;; esac; done; ip link set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " down 2>/dev/null; iw dev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " set type managed 2>/dev/null; ip link set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " up 2>&1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "chmod 777 -R "

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final i0(Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Ll4/l;->f:Lu3/g;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ll4/l;->V()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Could not read /proc/mounts \u2014 refusing to delete "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v3, p1}, Lu3/g;->e(ILjava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Ll4/l;->W(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Refusing to delete "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 still mounted: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "rm -rf "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    const-string p1, "Refusing to delete an empty or root path"

    goto :goto_0
.end method

.method public final j0(Lcom/zalexdev/stryker/custom/Exploit;)V
    .locals 5

    .line 1
    const-string v0, "exploits"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    const-string v3, "title"

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v3, "path"

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v3, "pattern"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getSuccesspatern()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v3, "lang"

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getLang()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v3, "args"

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getArgs()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v3, "issys"

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Exploit;->getIssystem()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1, v0}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "\"%s\""

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object p1, p0, Ll4/l;->c:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    return p2
.end method

.method public final k0(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/custom/Device;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "last_network_scan"

    invoke-virtual {p0, v0, p1}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public final l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "bssids"

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3, p2}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "mkdir "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final n(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ll4/l;->f:Lu3/g;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-static {p1}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "Executing rootless command: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Ll4/l;->c:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lu2/h;->n()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Lu2/h;->y(Lu2/g;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    const-string p1, "VM is not running \u2014 start it from the dashboard, then retry"

    .line 51
    .line 52
    invoke-static {p1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    invoke-virtual {v1, v4, v3, v0}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    return-object p1

    .line 87
    :cond_2
    invoke-static {p1}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "Executing chroot command: "

    .line 94
    .line 95
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v2, v0, v9}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ll4/l;->w()Ljava/lang/Process;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v1, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'\n"

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, "exit\n"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    const/4 v8, 0x1

    .line 136
    const/4 v10, 0x1

    .line 137
    const-wide/32 v11, 0x927c0

    .line 138
    .line 139
    .line 140
    move-object v5, p0

    .line 141
    invoke-virtual/range {v5 .. v12}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1
.end method

.method public final n0(Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "wlan_wifi"

    invoke-virtual {p0, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wlan_wps"

    const-string v2, "wlan_scan"

    const-string v3, "wlan_deauth"

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0, v3, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final o(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Ll4/l;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lu2/h;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lu2/h;->y(Lu2/g;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p1, "VM is not running \u2014 start it from the dashboard, then retry"

    .line 27
    .line 28
    invoke-static {p1}, Lu2/c;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1

    .line 42
    :cond_1
    invoke-virtual {p0}, Ll4/l;->w()Ljava/lang/Process;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'\n"

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "exit\n"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const-wide/32 v6, 0x927c0

    .line 73
    .line 74
    .line 75
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v7}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-static {p1}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Executing command: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Ll4/l;->f:Lu3/g;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0, v4}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ll4/l;->w()Ljava/lang/Process;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "exit\nexit\n"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    const-wide/32 v6, 0x927c0

    .line 53
    .line 54
    .line 55
    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v7}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final q(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ll4/l;->w()Ljava/lang/Process;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "exit\n"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const-wide/32 v6, 0x927c0

    .line 30
    .line 31
    .line 32
    move-object v0, p0

    .line 33
    invoke-virtual/range {v0 .. v7}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final q0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Le0/a;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, p2, v1}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "su -mm"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 8
    .line 9
    .line 10
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-static {p1}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const-string v0, "Executing command: "

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object v2, p0, Ll4/l;->f:Lu3/g;

    .line 23
    .line 24
    invoke-virtual {v2, v1, v0, v6}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ll4/l;->o0(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    const-wide/32 v8, 0x927c0

    .line 34
    .line 35
    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v9}, Ll4/l;->a0(Ljava/lang/Process;Ljava/lang/String;ZLjava/lang/String;ZJ)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll4/l;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ll4/l;->t(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "rm -rf "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final s0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "/data/data/com.zalexdev.stryker/files/killroot"

    invoke-virtual {p0, v0}, Ll4/l;->r(Ljava/lang/String;)V

    invoke-virtual {p0}, Ll4/l;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/data/local/stryker/release"

    invoke-virtual {p0, v0}, Ll4/l;->W(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final t0()V
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ll4/l;->R()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "svc wifi disable"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll4/l;->e:Ll4/m;

    invoke-virtual {v0, p1}, Ll4/m;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final u0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll4/l;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " --iface-down"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final w()Ljava/lang/Process;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-boolean v0, p0, Ll4/l;->i:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ll4/l;->i:Z

    iget-object v2, p0, Ll4/l;->f:Lu3/g;

    const-string v3, "su is not available on this device"

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lu3/g;->e(ILjava/lang/String;)V

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "/system/bin/sh"

    aput-object v4, v3, v0

    const-string v0, "-c"

    aput-object v0, v3, v1

    const-string v0, "exit 1"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    iget-object v1, p0, Ll4/l;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final y()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Ll4/l;->e:Ll4/m;

    .line 2
    .line 3
    iget-object v1, v0, Ll4/m;->b:Ll4/l;

    .line 4
    .line 5
    const-string v2, "wlan_deauth"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, "mon"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x2

    .line 37
    const-string v5, "Deauth interface is "

    .line 38
    .line 39
    iget-object v0, v0, Ll4/m;->c:Lu3/g;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v3, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v3, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-object v2
.end method

.method public final z(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/Exploit;
    .locals 4

    .line 1
    new-instance v0, Lcom/zalexdev/stryker/custom/Exploit;

    invoke-direct {v0}, Lcom/zalexdev/stryker/custom/Exploit;-><init>()V

    invoke-virtual {p0}, Ll4/l;->A()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/custom/Exploit;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    return-object v0
.end method

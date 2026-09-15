.class public final Lokio/-DeprecatedUpgrade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Okio:Lokio/-DeprecatedOkio;

.field private static final Utf8:Lokio/-DeprecatedUtf8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokio/-DeprecatedOkio;->INSTANCE:Lokio/-DeprecatedOkio;

    sput-object v0, Lokio/-DeprecatedUpgrade;->Okio:Lokio/-DeprecatedOkio;

    sget-object v0, Lokio/-DeprecatedUtf8;->INSTANCE:Lokio/-DeprecatedUtf8;

    sput-object v0, Lokio/-DeprecatedUpgrade;->Utf8:Lokio/-DeprecatedUtf8;

    return-void
.end method

.method public static final getOkio()Lokio/-DeprecatedOkio;
    .locals 1

    sget-object v0, Lokio/-DeprecatedUpgrade;->Okio:Lokio/-DeprecatedOkio;

    return-object v0
.end method

.method public static final getUtf8()Lokio/-DeprecatedUtf8;
    .locals 1

    sget-object v0, Lokio/-DeprecatedUpgrade;->Utf8:Lokio/-DeprecatedUtf8;

    return-object v0
.end method

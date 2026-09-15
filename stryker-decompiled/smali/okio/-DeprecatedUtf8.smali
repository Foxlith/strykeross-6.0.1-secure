.class public final Lokio/-DeprecatedUtf8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lokio/-DeprecatedUtf8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/-DeprecatedUtf8;

    invoke-direct {v0}, Lokio/-DeprecatedUtf8;-><init>()V

    sput-object v0, Lokio/-DeprecatedUtf8;->INSTANCE:Lokio/-DeprecatedUtf8;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final size(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "string"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final size(Ljava/lang/String;II)J
    .locals 1

    .line 2
    const-string v0, "string"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p1

    return-wide p1
.end method

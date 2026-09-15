.class final Lokio/ZipFileSystem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/ZipFileSystem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROOT()Lokio/Path;
    .locals 1

    invoke-static {}, Lokio/ZipFileSystem;->access$getROOT$cp()Lokio/Path;

    move-result-object v0

    return-object v0
.end method

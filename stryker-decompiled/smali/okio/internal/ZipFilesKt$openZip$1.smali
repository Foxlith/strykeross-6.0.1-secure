.class final Lokio/internal/ZipFilesKt$openZip$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->openZip$default(Lokio/Path;Lokio/FileSystem;Lj5/l;ILjava/lang/Object;)Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/l;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokio/internal/ZipFilesKt$openZip$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/internal/ZipFilesKt$openZip$1;

    invoke-direct {v0}, Lokio/internal/ZipFilesKt$openZip$1;-><init>()V

    sput-object v0, Lokio/internal/ZipFilesKt$openZip$1;->INSTANCE:Lokio/internal/ZipFilesKt$openZip$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lokio/internal/ZipEntry;

    invoke-virtual {p0, p1}, Lokio/internal/ZipFilesKt$openZip$1;->invoke(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

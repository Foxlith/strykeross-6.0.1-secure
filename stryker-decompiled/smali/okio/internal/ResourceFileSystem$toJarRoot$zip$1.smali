.class final Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ResourceFileSystem;->toJarRoot(Ljava/net/URL;)Lw4/c;
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
.field public static final INSTANCE:Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;

    invoke-direct {v0}, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;-><init>()V

    sput-object v0, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;->INSTANCE:Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;

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
    const-string v0, "entry"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v0

    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lokio/internal/ZipEntry;

    invoke-virtual {p0, p1}, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;->invoke(Lokio/internal/ZipEntry;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

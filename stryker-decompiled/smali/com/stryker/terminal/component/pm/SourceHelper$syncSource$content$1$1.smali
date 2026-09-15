.class final Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/component/pm/SourceHelper;->syncSource(Lcom/stryker/terminal/component/pm/SourceManager;)V
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
.field public static final INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;

    invoke-direct {v0}, Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stryker/terminal/component/pm/Source;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deb [trusted=yes] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/stryker/terminal/component/pm/Source;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/stryker/terminal/component/pm/Source;->repo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/stryker/terminal/component/pm/Source;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;->invoke(Lcom/stryker/terminal/component/pm/Source;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

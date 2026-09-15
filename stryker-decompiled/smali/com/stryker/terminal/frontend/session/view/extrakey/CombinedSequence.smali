.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->keys:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->keys:Ljava/util/List;

    return-object v0
.end method

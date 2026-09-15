.class public final Lcom/stryker/terminal/ui/term/TermTab$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/term/TermTab;
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
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/TermTab$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPARAMETER_SHOW_EKS()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/ui/term/TermTab;->access$getPARAMETER_SHOW_EKS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

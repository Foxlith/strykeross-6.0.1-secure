.class public final Lcom/stryker/terminal/frontend/session/terminal/BellController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/session/terminal/BellController$Companion;
    }
.end annotation


# static fields
.field private static final BELL_DELAY_MS:I

.field public static final Companion:Lcom/stryker/terminal/frontend/session/terminal/BellController$Companion;


# instance fields
.field private bellId:I

.field private lastBellTime:J

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/BellController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/BellController$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->Companion:Lcom/stryker/terminal/frontend/session/terminal/BellController$Companion;

    const/16 v0, 0x64

    sput v0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->BELL_DELAY_MS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bellOrVibrate(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellTermSession;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->lastBellTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/stryker/terminal/frontend/session/terminal/BellController;->BELL_DELAY_MS:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->lastBellTime:J

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellTermSession;->getShellProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/ShellProfile;->getEnableBell()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->soundPool:Landroid/media/SoundPool;

    if-nez p2, :cond_1

    new-instance p2, Landroid/media/SoundPool$Builder;

    invoke-direct {p2}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p2

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->soundPool:Landroid/media/SoundPool;

    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    sget v1, Lcom/stryker/terminal/R$raw;->bell:I

    invoke-virtual {p2, p1, v1, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->bellId:I

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/stryker/terminal/frontend/session/terminal/BellController;->bellId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2
    return-void
.end method

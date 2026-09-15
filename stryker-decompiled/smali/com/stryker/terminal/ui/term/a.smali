.class public final synthetic Lcom/stryker/terminal/ui/term/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/stryker/terminal/component/session/XSessionData;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/stryker/terminal/ui/term/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/term/a;->b:Lcom/stryker/terminal/component/session/XSessionData;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/term/a;->c:Landroid/graphics/Rect;

    .line 9
    .line 10
    iput p3, p0, Lcom/stryker/terminal/ui/term/a;->d:I

    .line 11
    .line 12
    iput p4, p0, Lcom/stryker/terminal/ui/term/a;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/term/a;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/a;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/stryker/terminal/ui/term/a;->b:Lcom/stryker/terminal/component/session/XSessionData;

    iget v3, p0, Lcom/stryker/terminal/ui/term/a;->e:I

    iget v4, p0, Lcom/stryker/terminal/ui/term/a;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, v4, v3}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->a(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, v4, v3}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->d(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

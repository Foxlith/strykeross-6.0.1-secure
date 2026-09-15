.class public final synthetic Lorg/jsoup/nodes/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/jsoup/helper/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/helper/Consumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/jsoup/nodes/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/nodes/c;->b:Lorg/jsoup/helper/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/c;->a:I

    iget-object v1, p0, Lorg/jsoup/nodes/c;->b:Lorg/jsoup/helper/Consumer;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Lorg/jsoup/nodes/Node;->b(Lorg/jsoup/helper/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void

    :pswitch_0
    invoke-static {v1, p1, p2}, Lorg/jsoup/nodes/Element;->e(Lorg/jsoup/helper/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

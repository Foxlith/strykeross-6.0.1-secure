.class public final synthetic Lorg/jsoup/nodes/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/jsoup/nodes/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/nodes/a;->b:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/a;->a:I

    iget-object v1, p0, Lorg/jsoup/nodes/a;->b:Ljava/util/function/Consumer;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Lorg/jsoup/nodes/Node;->a(Ljava/util/function/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void

    :pswitch_0
    invoke-static {v1, p1, p2}, Lorg/jsoup/nodes/Element;->g(Ljava/util/function/Consumer;Lorg/jsoup/nodes/Node;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

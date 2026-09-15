.class final Lorg/jsoup/nodes/Element$NodeList;
.super Lorg/jsoup/helper/ChangeNotifyingArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/ChangeNotifyingArrayList<",
        "Lorg/jsoup/nodes/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private final owner:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/jsoup/helper/ChangeNotifyingArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public onContentsChanged()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/nodes/Element$NodeList;->owner:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodelistChanged()V

    return-void
.end method

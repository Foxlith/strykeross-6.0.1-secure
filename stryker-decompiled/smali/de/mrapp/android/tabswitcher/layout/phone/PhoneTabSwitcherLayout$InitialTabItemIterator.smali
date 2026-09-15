.class Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;
.super Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitialTabItemIterator"
.end annotation


# instance fields
.field private final array:[Lde/mrapp/android/tabswitcher/model/TabItem;

.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;


# direct methods
.method private constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZI)V
    .locals 4

    .line 1
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;-><init>()V

    const-string v0, "The array may not be null"

    invoke-static {p2, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The array\'s length must be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lde/mrapp/android/util/Condition;->ensureEqual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->array:[Lde/mrapp/android/tabswitcher/model/TabItem;

    invoke-virtual {p0, p3, p4}, Lde/mrapp/android/tabswitcher/iterator/AbstractTabItemIterator;->initialize(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZILde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;-><init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;[Lde/mrapp/android/tabswitcher/model/TabItem;ZI)V

    return-void
.end method

.method private calculateAndClipStartPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->calculateStartPosition(Lde/mrapp/android/tabswitcher/model/TabItem;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    .line 6
    .line 7
    invoke-static {v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$000(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v1, v2, v3, v0, p2}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$100(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;IIFLde/mrapp/android/tabswitcher/model/TabItem;)Lg0/c;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getTag()Lde/mrapp/android/tabswitcher/model/Tag;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p2, Lg0/c;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-static {v1, v0, p1}, Landroid/support/v4/media/session/a;->i(Ljava/lang/Float;Lde/mrapp/android/tabswitcher/model/Tag;Lde/mrapp/android/tabswitcher/model/TabItem;)Lde/mrapp/android/tabswitcher/model/Tag;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p2, Lg0/c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p2, Lde/mrapp/android/tabswitcher/model/State;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lde/mrapp/android/tabswitcher/model/Tag;->setState(Lde/mrapp/android/tabswitcher/model/State;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private calculateStartPosition(Lde/mrapp/android/tabswitcher/model/TabItem;)F
    .locals 1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->getIndex()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->getCount()I

    move-result p1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {p1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$200(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$300(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :goto_1
    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->array:[Lde/mrapp/android/tabswitcher/model/TabItem;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;
    .locals 2

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->array:[Lde/mrapp/android/tabswitcher/model/TabItem;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/model/TabSwitcherModel;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/util/view/AttachedViewRecycler;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lde/mrapp/android/tabswitcher/model/TabItem;->create(Lde/mrapp/android/tabswitcher/model/Model;Lde/mrapp/android/util/view/AttachedViewRecycler;I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v0

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->getItem(I)Lde/mrapp/android/tabswitcher/model/TabItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->calculateAndClipStartPosition(Lde/mrapp/android/tabswitcher/model/TabItem;Lde/mrapp/android/tabswitcher/model/TabItem;)V

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$InitialTabItemIterator;->array:[Lde/mrapp/android/tabswitcher/model/TabItem;

    aput-object v0, v1, p1

    :cond_1
    return-object v0
.end method

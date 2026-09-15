.class Lde/mrapp/android/tabswitcher/Tab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lde/mrapp/android/tabswitcher/Tab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    .line 1
    new-instance v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-direct {v0, p1}, Lde/mrapp/android/tabswitcher/Tab;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab$1;->createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lde/mrapp/android/tabswitcher/Tab;
    .locals 0

    .line 1
    new-array p1, p1, [Lde/mrapp/android/tabswitcher/Tab;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab$1;->newArray(I)[Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    return-object p1
.end method

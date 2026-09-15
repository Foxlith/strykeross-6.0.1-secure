.class public final synthetic Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh2/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh2/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .line 1
    iget v0, p0, Lh2/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh2/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 9
    .line 10
    iget-object p1, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 21
    .line 22
    const-string p3, "macchanger_wlan"

    .line 23
    .line 24
    invoke-virtual {p2, p3, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    move-object v2, v1

    .line 37
    check-cast v2, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    .line 38
    .line 39
    move-object v3, p1

    .line 40
    move-object v4, p2

    .line 41
    move v5, p3

    .line 42
    move-wide v6, p4

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->a(Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

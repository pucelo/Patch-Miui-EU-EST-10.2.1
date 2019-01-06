.class public Lcom/android/server/am/MiuiUserSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "MiuiUserSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .registers 5

    const v0, 0x110d000b

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v7, 0x101005d

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v5, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v6, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v5, Lmiui/R$id;->message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x102000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/MiuiUserSwitchingDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x110900cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic show()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    return-void
.end method

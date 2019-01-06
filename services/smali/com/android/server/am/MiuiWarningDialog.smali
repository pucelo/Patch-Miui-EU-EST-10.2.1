.class public Lcom/android/server/am/MiuiWarningDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "MiuiWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiWarningDialog$1;
    }
.end annotation


# static fields
.field private static final BUTTON_CANCEL:I = 0x2

.field private static final BUTTON_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWarningDialog"


# instance fields
.field private mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MiuiWarningDialog;)Lcom/android/server/am/MiuiWarnings$WarningCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/server/am/MiuiWarnings$WarningCallback;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/am/MiuiWarningDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/MiuiWarningDialog$1;-><init>(Lcom/android/server/am/MiuiWarningDialog;)V

    iput-object v3, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/server/am/MiuiWarningDialog;->setCancelable(Z)V

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x110900fd

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MiuiWarningDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x110900fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/MiuiWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const v3, 0x110900fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/MiuiWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiuiWarning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    sget v1, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/MiuiWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public bridge synthetic onStart()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStart()V

    return-void
.end method

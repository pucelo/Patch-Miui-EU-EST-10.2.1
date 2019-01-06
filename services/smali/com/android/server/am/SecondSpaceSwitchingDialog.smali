.class Lcom/android/server/am/SecondSpaceSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "SecondSpaceSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .registers 5

    const v0, 0x110d0009

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xf06

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x11030021

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.class public Landroid/view/WindowManagerCompat;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySleepToken(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 2

    if-eqz p0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method

.method public static requestAppKeyboardShortcuts(Landroid/view/WindowManager;Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;I)V
    .locals 1

    new-instance v0, Landroid/view/WindowManagerCompat$1;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerCompat$1;-><init>(Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;)V

    invoke-interface {p0, v0, p2}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method

.method public static setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    return-void
.end method

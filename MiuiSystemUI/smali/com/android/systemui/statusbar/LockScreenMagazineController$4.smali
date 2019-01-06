.class Lcom/android/systemui/statusbar/LockScreenMagazineController$4;
.super Ljava/lang/Object;
.source "LockScreenMagazineController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->refreshWallpaperInfo()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightClock()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get10(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v1, :cond_1

    const/high16 v2, -0x4e000000

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_2

    const v2, 0x7f080266

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$4;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get10(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f080265

    goto :goto_1
.end method

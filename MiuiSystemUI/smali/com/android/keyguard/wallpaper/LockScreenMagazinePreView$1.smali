.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->openAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->-get0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "click_link"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

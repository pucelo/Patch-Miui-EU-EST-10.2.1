.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreGlobalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->-get3(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->-get3(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView$1;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->-get3(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x32

    const/16 v5, 0x30

    const/16 v6, 0x48

    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;->-wrap1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreGlobalView;Landroid/widget/TextView;ILjava/lang/String;III)V

    return-void
.end method

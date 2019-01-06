.class Lcom/android/systemui/statusbar/LockScreenMagazineController$5;
.super Landroid/database/ContentObserver;
.source "LockScreenMagazineController.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$5;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$5;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    return-void
.end method

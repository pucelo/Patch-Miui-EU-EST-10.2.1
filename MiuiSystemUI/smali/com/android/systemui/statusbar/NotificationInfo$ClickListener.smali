.class public interface abstract Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;
.super Ljava/lang/Object;
.source "NotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClickCheckSave(Ljava/lang/Runnable;)V
.end method

.method public abstract onClickDone(Landroid/view/View;)V
.end method

.method public abstract onClickSettings(Landroid/view/View;Landroid/app/NotificationChannelCompat;I)V
.end method

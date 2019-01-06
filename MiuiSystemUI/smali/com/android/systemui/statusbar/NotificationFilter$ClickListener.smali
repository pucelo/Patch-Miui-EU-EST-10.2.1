.class public interface abstract Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;
.super Ljava/lang/Object;
.source "NotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClickCancel(Landroid/view/View;)V
.end method

.method public abstract onClickConfirm(Landroid/view/View;)V
.end method

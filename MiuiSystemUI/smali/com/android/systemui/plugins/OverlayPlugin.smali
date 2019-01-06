.class public interface abstract Lcom/android/systemui/plugins/OverlayPlugin;
.super Ljava/lang/Object;
.source "OverlayPlugin.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_OVERLAY"
    version = 0x2
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_OVERLAY"

.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract holdStatusBarOpen()Z
.end method

.method public abstract setCollapseDesired(Z)V
.end method

.method public abstract setup(Landroid/view/View;Landroid/view/View;)V
.end method

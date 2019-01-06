.class public interface abstract Lcom/android/systemui/plugins/PluginListener;
.super Ljava/lang/Object;
.source "PluginListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

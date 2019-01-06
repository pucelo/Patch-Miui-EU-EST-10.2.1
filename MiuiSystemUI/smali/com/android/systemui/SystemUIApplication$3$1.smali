.class Lcom/android/systemui/SystemUIApplication$3$1;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication$3;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SystemUIApplication$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3$1;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWouldOtherwiseCollapse(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$3$1;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication$3;->-get0(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
            "<TT;>;",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    check-cast p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;->compare(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I

    move-result v0

    return v0
.end method

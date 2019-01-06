.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get1(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    return-object v0
.end method

.method public withCallback(Lcom/android/systemui/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withDefault(Lcom/android/systemui/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Supplier",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addDefault(Lcom/android/systemui/util/function/Supplier;)V

    return-object p0
.end method

.method public withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/plugins/PluginManagerHelper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
            "<TT;TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addPlugin(Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V

    :cond_0
    return-object p0
.end method

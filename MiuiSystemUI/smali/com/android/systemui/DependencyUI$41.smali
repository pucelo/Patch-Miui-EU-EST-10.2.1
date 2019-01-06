.class Lcom/android/systemui/DependencyUI$41;
.super Ljava/lang/Object;
.source "DependencyUI.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DependencyUI;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DependencyUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/DependencyUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$41;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    return-object v1
.end method

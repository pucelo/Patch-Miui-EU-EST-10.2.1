.class Lcom/android/systemui/plugins/PluginManagerImpl$1;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$1;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    return-void
.end method

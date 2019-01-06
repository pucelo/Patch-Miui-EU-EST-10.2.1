.class Lcom/android/systemui/SystemUIFactory$2;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory$2;->this$0:Lcom/android/systemui/SystemUIFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/miui/AppIconsManager;

    invoke-direct {v0}, Lcom/android/systemui/miui/AppIconsManager;-><init>()V

    return-object v0
.end method

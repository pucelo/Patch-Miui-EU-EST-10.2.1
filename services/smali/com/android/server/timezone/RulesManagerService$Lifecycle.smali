.class public Lcom/android/server/timezone/RulesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezone/RulesManagerService;->-wrap0(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezone/RulesManagerService;->start()V

    const-string/jumbo v1, "timezone"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Lcom/android/server/timezone/RulesManagerService;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezone/RulesManagerService$Lifecycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public getVr2dDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap4(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-wrap2(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap20(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap22(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public onSleepStateChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap23(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap21(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    return-void
.end method

.method public setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-wrap25(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

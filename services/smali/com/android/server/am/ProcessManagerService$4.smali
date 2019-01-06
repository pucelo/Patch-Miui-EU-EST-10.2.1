.class Lcom/android/server/am/ProcessManagerService$4;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->reportCameraBoost(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$killNum:I

.field final synthetic val$nowFree:J

.field final synthetic val$time:J

.field final synthetic val$willFree:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;JIIJ)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$4;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-wide p2, p0, Lcom/android/server/am/ProcessManagerService$4;->val$nowFree:J

    iput p4, p0, Lcom/android/server/am/ProcessManagerService$4;->val$killNum:I

    iput p5, p0, Lcom/android/server/am/ProcessManagerService$4;->val$willFree:I

    iput-wide p6, p0, Lcom/android/server/am/ProcessManagerService$4;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v2, "nowFree"

    iget-wide v4, p0, Lcom/android/server/am/ProcessManagerService$4;->val$nowFree:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "killNum"

    iget v3, p0, Lcom/android/server/am/ProcessManagerService$4;->val$killNum:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "willFree"

    iget v3, p0, Lcom/android/server/am/ProcessManagerService$4;->val$willFree:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "totalMem"

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    iget-wide v4, p0, Lcom/android/server/am/ProcessManagerService$4;->val$time:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$4;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessManagerService;->-get3(Lcom/android/server/am/ProcessManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "camera_boost"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v0

    invoke-static {}, Lcom/android/server/am/ProcessManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "error in reportCameraBoost to settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

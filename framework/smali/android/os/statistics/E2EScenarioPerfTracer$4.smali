.class final Landroid/os/statistics/E2EScenarioPerfTracer$4;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$payload:Landroid/os/statistics/E2EScenarioPayload;

.field final synthetic val$perfShielder:Lcom/android/internal/app/IPerfShielder;

.field final synthetic val$scenario:Landroid/os/statistics/E2EScenario;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$tid:I

.field final synthetic val$uptimeMs:J


# direct methods
.method constructor <init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 8

    iput-object p1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iput-object p2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$scenario:Landroid/os/statistics/E2EScenario;

    iput-object p3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$payload:Landroid/os/statistics/E2EScenarioPayload;

    iput p5, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tid:I

    iput-wide p6, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$uptimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v1, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$perfShielder:Lcom/android/internal/app/IPerfShielder;

    iget-object v2, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$scenario:Landroid/os/statistics/E2EScenario;

    iget-object v3, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$payload:Landroid/os/statistics/E2EScenarioPayload;

    iget v5, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$tid:I

    iget-wide v6, p0, Landroid/os/statistics/E2EScenarioPerfTracer$4;->val$uptimeMs:J

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IPerfShielder;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.class Lcom/android/systemui/analytics/SettingsJobSchedulerService$1;
.super Ljava/lang/Object;
.source "SettingsJobSchedulerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/analytics/SettingsJobSchedulerService;->trackSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/SettingsJobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/SettingsJobSchedulerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService$1;->this$0:Lcom/android/systemui/analytics/SettingsJobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService$1;->this$0:Lcom/android/systemui/analytics/SettingsJobSchedulerService;

    invoke-static {v0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->-wrap0(Lcom/android/systemui/analytics/SettingsJobSchedulerService;)V

    return-void
.end method

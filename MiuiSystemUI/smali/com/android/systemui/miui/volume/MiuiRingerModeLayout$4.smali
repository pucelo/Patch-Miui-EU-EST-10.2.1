.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setRingerModeByUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    iput p2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;->val$mode:I

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

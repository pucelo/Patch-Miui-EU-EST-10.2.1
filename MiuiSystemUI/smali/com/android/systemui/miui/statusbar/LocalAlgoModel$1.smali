.class final Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;
.super Ljava/lang/Object;
.source "LocalAlgoModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->updateLocalModelIfNeed(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$scoreInfo:Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;->val$scoreInfo:Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;->val$scoreInfo:Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->updateLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->recordUpdateTime(Landroid/content/Context;)V

    return-void
.end method

.class final Lcom/android/systemui/statusbar/notification/NotificationInflater$8;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateOptimizedHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$largeAction:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$largeAction:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;->val$largeAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    return-void
.end method

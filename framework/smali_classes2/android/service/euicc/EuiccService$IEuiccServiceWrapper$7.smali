.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IDeleteSubscriptionCallback;

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 5

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$iccid:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$callback:Landroid/service/euicc/IDeleteSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$slotId:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$iccid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/service/euicc/EuiccService;->onDeleteSubscription(ILjava/lang/String;)I

    move-result v1

    :try_start_c
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$callback:Landroid/service/euicc/IDeleteSubscriptionCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IDeleteSubscriptionCallback;->onComplete(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

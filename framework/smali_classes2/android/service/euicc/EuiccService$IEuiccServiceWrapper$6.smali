.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$slotId:I

    invoke-virtual {v2, v3}, Landroid/service/euicc/EuiccService;->onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v1

    :try_start_a
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IGetEuiccInfoCallback;->onSuccess(Landroid/telephony/euicc/EuiccInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

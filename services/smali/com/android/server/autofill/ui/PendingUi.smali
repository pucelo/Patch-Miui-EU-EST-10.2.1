.class public final Lcom/android/server/autofill/ui/PendingUi;
.super Ljava/lang/Object;
.source "PendingUi.java"


# static fields
.field public static final STATE_CREATED:I = 0x1

.field public static final STATE_FINISHED:I = 0x4

.field public static final STATE_PENDING:I = 0x2


# instance fields
.field public final client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final id:I

.field private mState:I

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    iput p2, p0, Lcom/android/server/autofill/ui/PendingUi;->id:I

    iput-object p3, p0, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    iget v0, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    return v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public matches(Landroid/os/IBinder;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PendingUi: [token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/ui/PendingUi;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/autofill/ui/PendingUi;

    const-string/jumbo v2, "STATE_"

    iget v3, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

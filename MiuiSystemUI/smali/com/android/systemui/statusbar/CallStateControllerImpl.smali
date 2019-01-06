.class public Lcom/android/systemui/statusbar/CallStateControllerImpl;
.super Ljava/lang/Object;
.source "CallStateControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CallStateController;


# instance fields
.field private mCallStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CallStateControllerImpl;->mCallStateArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCallState(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/CallStateControllerImpl;->mCallStateArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isMsim()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/CallStateControllerImpl;->mSimCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallState(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/CallStateControllerImpl;->mCallStateArray:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setSimCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/CallStateControllerImpl;->mSimCount:I

    return-void
.end method

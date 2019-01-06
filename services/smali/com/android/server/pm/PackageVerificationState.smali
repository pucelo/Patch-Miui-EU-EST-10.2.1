.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    return-void
.end method

.method public addSufficientVerifier(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public extendTimeout()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    :cond_7
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public isInstallAllowed()Z
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    return v2

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    return v2

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public isVerificationComplete()Z
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    return v2

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    return v2

    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method public setVerifierResponse(II)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    if-ne p1, v0, :cond_16

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    packed-switch p2, :pswitch_data_48

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    :goto_d
    return v1

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :pswitch_13
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_d

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    if-ne p1, v0, :cond_29

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    packed-switch p2, :pswitch_data_50

    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    :goto_25
    return v1

    :pswitch_26
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    goto :goto_25

    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_47

    if-ne p2, v1, :cond_37

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    :cond_37
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_46

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    :cond_46
    return v1

    :cond_47
    return v2

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method

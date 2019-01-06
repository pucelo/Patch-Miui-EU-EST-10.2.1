.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "DexoptOptions.java"


# static fields
.field public static final DEXOPT_AS_SHARED_LIBRARY:I = 0x40

.field public static final DEXOPT_BOOT_COMPLETE:I = 0x4

.field public static final DEXOPT_CHECK_FOR_PROFILES_UPDATES:I = 0x1

.field public static final DEXOPT_DOWNGRADE:I = 0x20

.field public static final DEXOPT_FORCE:I = 0x2

.field public static final DEXOPT_ONLY_SECONDARY_DEX:I = 0x8

.field public static final DEXOPT_ONLY_SHARED_DEX:I = 0x10


# instance fields
.field private final mCompilerFilter:Ljava/lang/String;

.field private final mFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7f

    not-int v1, v0

    and-int/2addr v1, p4

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid flags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    iput-object p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompilerFilter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public isBootComplete()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isCheckForProfileUpdates()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDexoptAsSharedLibrary()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDexoptOnlySecondaryDex()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDexoptOnlySharedDex()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDowngrade()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isForce()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

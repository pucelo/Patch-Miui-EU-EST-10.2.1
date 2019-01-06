.class final Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;
.super Lmiui/maml/MamlDrawable$MamlDrawableState;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/AnimatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatingDrawableState"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .registers 6

    invoke-direct {p0}, Lmiui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    iput-object p1, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p2, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method protected createDrawable()Lmiui/maml/MamlDrawable;
    .registers 7

    new-instance v0, Lmiui/maml/AnimatingDrawable;

    iget-object v1, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v5, p0, Lmiui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/ResourceManager;Landroid/os/UserHandle;)V

    return-object v0
.end method

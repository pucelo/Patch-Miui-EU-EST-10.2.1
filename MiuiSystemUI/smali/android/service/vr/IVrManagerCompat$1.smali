.class final Landroid/service/vr/IVrManagerCompat$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "IVrManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/vr/IVrManagerCompat;->registerListener(Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;


# direct methods
.method constructor <init>(Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;)V
    .locals 0

    iput-object p1, p0, Landroid/service/vr/IVrManagerCompat$1;->val$callbacks:Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/service/vr/IVrManagerCompat$1;->val$callbacks:Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;

    invoke-interface {v0, p1}, Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;->onVrStateChanged(Z)V

    return-void
.end method

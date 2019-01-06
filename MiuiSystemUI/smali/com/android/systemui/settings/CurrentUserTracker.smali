.class public abstract Lcom/android/systemui/settings/CurrentUserTracker;
.super Ljava/lang/Object;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/CurrentUserTracker$1;,
        Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/settings/CurrentUserTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$1;-><init>(Lcom/android/systemui/settings/CurrentUserTracker;)V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Lcom/android/systemui/util/function/Consumer;

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-void
.end method


# virtual methods
.method public abstract onUserSwitched(I)V
.end method

.method public startTracking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Lcom/android/systemui/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->-wrap0(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Lcom/android/systemui/util/function/Consumer;)V

    return-void
.end method

.method public stopTracking()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Lcom/android/systemui/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->-wrap1(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Lcom/android/systemui/util/function/Consumer;)V

    return-void
.end method

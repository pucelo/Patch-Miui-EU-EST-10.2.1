.class final Lcom/android/server/AppOpsServiceState$UserState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field mCallback:Lcom/android/server/AppOpsServiceState$Callback;

.field mCallbackBinder:Lcom/android/internal/app/IOpsCallback;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsServiceState$UserState;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState$UserState;-><init>()V

    return-void
.end method

.class public Lcom/android/keyguard/KeyguardRequestThrottledException;
.super Ljava/lang/Exception;
.source "KeyguardRequestThrottledException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/android/keyguard/KeyguardRequestThrottledException;->mTimeoutMs:I

    return-void
.end method


# virtual methods
.method public getTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardRequestThrottledException;->mTimeoutMs:I

    return v0
.end method

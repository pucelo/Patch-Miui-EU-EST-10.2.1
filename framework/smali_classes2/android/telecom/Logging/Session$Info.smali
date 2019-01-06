.class public Landroid/telecom/Logging/Session$Info;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/Logging/Session$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final methodPath:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/Logging/Session$Info$1;

    invoke-direct {v0}, Landroid/telecom/Logging/Session$Info$1;-><init>()V

    sput-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;
    .registers 4

    new-instance v1, Landroid/telecom/Logging/Session$Info;

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-wrap1(Landroid/telecom/Logging/Session;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-nez v0, :cond_16

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-wrap0(Landroid/telecom/Logging/Session;)Z

    move-result v0

    :goto_e
    invoke-virtual {p0, v0}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

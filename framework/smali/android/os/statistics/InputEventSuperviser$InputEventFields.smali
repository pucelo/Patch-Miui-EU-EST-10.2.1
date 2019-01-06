.class public Landroid/os/statistics/InputEventSuperviser$InputEventFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "InputEventSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/InputEventSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputEventFields"
.end annotation


# instance fields
.field public inputChannel:Landroid/view/InputChannel;

.field public inputChannelName:Ljava/lang/String;

.field public inputEventAction:I

.field public inputEventCode:I

.field public inputEventDescription:Ljava/lang/String;

.field public inputEventSequenceNumber:I

.field public inputEventStage:I

.field public inputEventTime:J

.field public inputEventType:I

.field public targetReceiver:Landroid/view/InputEventReceiver;

.field public targetReceiverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    return-void
.end method
